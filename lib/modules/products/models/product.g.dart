// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Product _$$_ProductFromJson(Map<String, dynamic> json) => _$_Product(
      sku: json['sku'] as int,
      name: json['name'] as String,
      image: json['image'] as String,
      ragularPrice: (json['ragularPrice'] as num).toDouble(),
      salePrice: (json['salePrice'] as num).toDouble(),
      onSale: json['onSale'] as bool,
      description: json['description'] as String,
      customerReviewAverage: (json['customerReviewAverage'] as num).toDouble(),
    );

Map<String, dynamic> _$$_ProductToJson(_$_Product instance) =>
    <String, dynamic>{
      'sku': instance.sku,
      'name': instance.name,
      'image': instance.image,
      'ragularPrice': instance.ragularPrice,
      'salePrice': instance.salePrice,
      'onSale': instance.onSale,
      'description': instance.description,
      'customerReviewAverage': instance.customerReviewAverage,
    };
