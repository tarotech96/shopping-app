import 'package:best_buy_api/best_buy_api.dart';
import 'package:shopping_app/modules/products/models/product.dart';
import 'package:shopping_app/modules/products/models/products_data.dart';

class ProductsRepository {
  ProductsRepository({BestBuyApiClient? client})
      : _client = client ?? BestBuyApiClient();

  static const _defaultLimit = 20;
  final BestBuyApiClient _client;

  Future<ProductsData> getProductsData(int from,
      [int limit = _defaultLimit]) async {
    final page = from ~/ limit + 1;
    final response = await _client.getPromotedProducts(page, limit);

    return _mapProductsRespone(response);
  }
}

ProductsData _mapProductsRespone(ProductsResponse response) {
  return ProductsData(
      products: response.products.map(_mapBestBuyProduct).toList(),
      total: response.total);
}

Product _mapBestBuyProduct(BestBuyProduct product) {
  // ignore: unnecessary_null_comparison, prefer_interpolation_to_compose_strings
  final description = (product.shortDescription != null
          ? '${product.shortDescription}\n\n'
          : '') +
      '${product.description ?? product.longDescription ?? product.plot}';

  return Product(
      sku: product.sku,
      name: product.name,
      image: product.image,
      ragularPrice: product.regularPrice,
      salePrice: product.salePrice,
      onSale: product.onSale,
      description: description,
      customerReviewAverage: product.customerReviewAverage ?? 0);
}
