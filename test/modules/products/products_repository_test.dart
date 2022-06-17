import 'package:best_buy_api/best_buy_api.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:shopping_app/modules/products/products.dart';

class MockBestBuyApiClient extends Mock implements BestBuyApiClient {}

void main() {
  late BestBuyApiClient apiClient;
  late ProductsRepository repository;

  setUp(() {
    apiClient = MockBestBuyApiClient();
    repository = ProductsRepository(client: apiClient);
  });

  group('ProductsRepository', () {
    group('constructor', () {
      test('Should calculate page parameter value correctly', () async {
        when(apiClient.getPromotedProducts(1, 10)).thenAnswer(
            (_) async => const ProductsResponse(products: [], total: 0));

        await repository.getProductsData(81, 20);
        verify(apiClient.getPromotedProducts(5, 20)).called(1);
      });

      test('Should map products data correctly', () async {
        final products = <BestBuyProduct>[
          const BestBuyProduct(
            sku: 1,
            name: 'Product 1',
            image: 'image/url/1',
            regularPrice: 9.99,
            salePrice: 9.99,
            onSale: false,
            shortDescription: 'a.',
            description: 'bb.',
            customerReviewAverage: 4.5,
          ),
          const BestBuyProduct(
            sku: 2,
            name: 'Product 2',
            image: 'image/url/2',
            regularPrice: 19.99,
            salePrice: 15.99,
            onSale: true,
            longDescription: 'ccc.',
          ),
          const BestBuyProduct(
            sku: 2,
            name: 'Product 2',
            image: 'image/url/2',
            regularPrice: 19.99,
            salePrice: 15.99,
            onSale: true,
            shortDescription: 'a.',
            plot: 'dd.',
          ),
        ];

        when(apiClient.getPromotedProducts(1, 10)).thenAnswer((_) async =>
            ProductsResponse(products: products, total: products.length));

        final productsData = await repository.getProductsData(81, 20);
        expect(productsData, <Product>[
          const Product(
            sku: 1,
            name: 'Product 1',
            image: 'image/url/1',
            ragularPrice: 9.99,
            salePrice: 9.99,
            onSale: false,
            description: 'a.\n\nbb.',
            customerReviewAverage: 4.5,
          ),
          const Product(
              sku: 2,
              name: 'Product 2',
              image: 'image/url/2',
              ragularPrice: 19.99,
              salePrice: 15.99,
              onSale: true,
              description: 'ccc.',
              customerReviewAverage: 4.0),
          const Product(
              sku: 2,
              name: 'Product 2',
              image: 'image/url/2',
              ragularPrice: 19.99,
              salePrice: 15.99,
              onSale: true,
              description: 'a.\n\ndd.',
              customerReviewAverage: 5.0)
        ]);
        expect(productsData.total, products.length);
      });
    });
  });
}
