import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
class Product with _$Product {
  const factory Product(
      {required int sku,
      required String name,
      required String image,
      required double ragularPrice,
      required double salePrice,
      required bool onSale,
      required String description,
      required double customerReviewAverage}) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}
