// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductsResponse _$$_ProductsResponseFromJson(Map<String, dynamic> json) =>
    _$_ProductsResponse(
      products: (json['products'] as List<dynamic>)
          .map((e) => BestBuyProduct.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: json['total'] as int,
    );

Map<String, dynamic> _$$_ProductsResponseToJson(_$_ProductsResponse instance) =>
    <String, dynamic>{
      'products': instance.products,
      'total': instance.total,
    };
