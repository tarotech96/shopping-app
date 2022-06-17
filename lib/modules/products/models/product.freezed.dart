// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
mixin _$Product {
  int get sku => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  double get ragularPrice => throw _privateConstructorUsedError;
  double get salePrice => throw _privateConstructorUsedError;
  bool get onSale => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  double get customerReviewAverage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res>;
  $Res call(
      {int sku,
      String name,
      String image,
      double ragularPrice,
      double salePrice,
      bool onSale,
      String description,
      double customerReviewAverage});
}

/// @nodoc
class _$ProductCopyWithImpl<$Res> implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  final Product _value;
  // ignore: unused_field
  final $Res Function(Product) _then;

  @override
  $Res call({
    Object? sku = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? ragularPrice = freezed,
    Object? salePrice = freezed,
    Object? onSale = freezed,
    Object? description = freezed,
    Object? customerReviewAverage = freezed,
  }) {
    return _then(_value.copyWith(
      sku: sku == freezed
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      ragularPrice: ragularPrice == freezed
          ? _value.ragularPrice
          : ragularPrice // ignore: cast_nullable_to_non_nullable
              as double,
      salePrice: salePrice == freezed
          ? _value.salePrice
          : salePrice // ignore: cast_nullable_to_non_nullable
              as double,
      onSale: onSale == freezed
          ? _value.onSale
          : onSale // ignore: cast_nullable_to_non_nullable
              as bool,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      customerReviewAverage: customerReviewAverage == freezed
          ? _value.customerReviewAverage
          : customerReviewAverage // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$$_ProductCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$_ProductCopyWith(
          _$_Product value, $Res Function(_$_Product) then) =
      __$$_ProductCopyWithImpl<$Res>;
  @override
  $Res call(
      {int sku,
      String name,
      String image,
      double ragularPrice,
      double salePrice,
      bool onSale,
      String description,
      double customerReviewAverage});
}

/// @nodoc
class __$$_ProductCopyWithImpl<$Res> extends _$ProductCopyWithImpl<$Res>
    implements _$$_ProductCopyWith<$Res> {
  __$$_ProductCopyWithImpl(_$_Product _value, $Res Function(_$_Product) _then)
      : super(_value, (v) => _then(v as _$_Product));

  @override
  _$_Product get _value => super._value as _$_Product;

  @override
  $Res call({
    Object? sku = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? ragularPrice = freezed,
    Object? salePrice = freezed,
    Object? onSale = freezed,
    Object? description = freezed,
    Object? customerReviewAverage = freezed,
  }) {
    return _then(_$_Product(
      sku: sku == freezed
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      ragularPrice: ragularPrice == freezed
          ? _value.ragularPrice
          : ragularPrice // ignore: cast_nullable_to_non_nullable
              as double,
      salePrice: salePrice == freezed
          ? _value.salePrice
          : salePrice // ignore: cast_nullable_to_non_nullable
              as double,
      onSale: onSale == freezed
          ? _value.onSale
          : onSale // ignore: cast_nullable_to_non_nullable
              as bool,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      customerReviewAverage: customerReviewAverage == freezed
          ? _value.customerReviewAverage
          : customerReviewAverage // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Product implements _Product {
  const _$_Product(
      {required this.sku,
      required this.name,
      required this.image,
      required this.ragularPrice,
      required this.salePrice,
      required this.onSale,
      required this.description,
      required this.customerReviewAverage});

  factory _$_Product.fromJson(Map<String, dynamic> json) =>
      _$$_ProductFromJson(json);

  @override
  final int sku;
  @override
  final String name;
  @override
  final String image;
  @override
  final double ragularPrice;
  @override
  final double salePrice;
  @override
  final bool onSale;
  @override
  final String description;
  @override
  final double customerReviewAverage;

  @override
  String toString() {
    return 'Product(sku: $sku, name: $name, image: $image, ragularPrice: $ragularPrice, salePrice: $salePrice, onSale: $onSale, description: $description, customerReviewAverage: $customerReviewAverage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Product &&
            const DeepCollectionEquality().equals(other.sku, sku) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality()
                .equals(other.ragularPrice, ragularPrice) &&
            const DeepCollectionEquality().equals(other.salePrice, salePrice) &&
            const DeepCollectionEquality().equals(other.onSale, onSale) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.customerReviewAverage, customerReviewAverage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(sku),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(ragularPrice),
      const DeepCollectionEquality().hash(salePrice),
      const DeepCollectionEquality().hash(onSale),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(customerReviewAverage));

  @JsonKey(ignore: true)
  @override
  _$$_ProductCopyWith<_$_Product> get copyWith =>
      __$$_ProductCopyWithImpl<_$_Product>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductToJson(this);
  }
}

abstract class _Product implements Product {
  const factory _Product(
      {required final int sku,
      required final String name,
      required final String image,
      required final double ragularPrice,
      required final double salePrice,
      required final bool onSale,
      required final String description,
      required final double customerReviewAverage}) = _$_Product;

  factory _Product.fromJson(Map<String, dynamic> json) = _$_Product.fromJson;

  @override
  int get sku => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get image => throw _privateConstructorUsedError;
  @override
  double get ragularPrice => throw _privateConstructorUsedError;
  @override
  double get salePrice => throw _privateConstructorUsedError;
  @override
  bool get onSale => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  double get customerReviewAverage => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ProductCopyWith<_$_Product> get copyWith =>
      throw _privateConstructorUsedError;
}
