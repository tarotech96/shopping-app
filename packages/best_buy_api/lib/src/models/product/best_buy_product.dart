import 'package:freezed_annotation/freezed_annotation.dart';

part 'best_buy_product.freezed.dart';
part 'best_buy_product.g.dart';

@freezed
class BestBuyProduct with _$BestBuyProduct {
  const factory BestBuyProduct({
    required int sku,
    required String name,
    required String image,
    required double regularPrice,
    required double salePrice,
    required bool onSale,
    String? shortDescription,
    String? longDescription,
    String? description,
    String? plot,
    double? customerReviewAverage,
  }) = _BestBuyProduct;

  factory BestBuyProduct.fromJson(Map<String, dynamic> json) =>
      _$BestBuyProductFromJson(json);
}
