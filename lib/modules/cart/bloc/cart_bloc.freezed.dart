// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cart_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CartEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Product product) added,
    required TResult Function(CartItem item) removed,
    required TResult Function(CartItem item) countIncreased,
    required TResult Function(CartItem item) countDecreased,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Product product)? added,
    TResult Function(CartItem item)? removed,
    TResult Function(CartItem item)? countIncreased,
    TResult Function(CartItem item)? countDecreased,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Product product)? added,
    TResult Function(CartItem item)? removed,
    TResult Function(CartItem item)? countIncreased,
    TResult Function(CartItem item)? countDecreased,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductAdded value) added,
    required TResult Function(CartItemRemoved value) removed,
    required TResult Function(CartItemCountIncreased value) countIncreased,
    required TResult Function(CartItemCountDecreased value) countDecreased,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ProductAdded value)? added,
    TResult Function(CartItemRemoved value)? removed,
    TResult Function(CartItemCountIncreased value)? countIncreased,
    TResult Function(CartItemCountDecreased value)? countDecreased,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductAdded value)? added,
    TResult Function(CartItemRemoved value)? removed,
    TResult Function(CartItemCountIncreased value)? countIncreased,
    TResult Function(CartItemCountDecreased value)? countDecreased,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartEventCopyWith<$Res> {
  factory $CartEventCopyWith(CartEvent value, $Res Function(CartEvent) then) =
      _$CartEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CartEventCopyWithImpl<$Res> implements $CartEventCopyWith<$Res> {
  _$CartEventCopyWithImpl(this._value, this._then);

  final CartEvent _value;
  // ignore: unused_field
  final $Res Function(CartEvent) _then;
}

/// @nodoc
abstract class _$$ProductAddedCopyWith<$Res> {
  factory _$$ProductAddedCopyWith(
          _$ProductAdded value, $Res Function(_$ProductAdded) then) =
      __$$ProductAddedCopyWithImpl<$Res>;
  $Res call({Product product});

  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class __$$ProductAddedCopyWithImpl<$Res> extends _$CartEventCopyWithImpl<$Res>
    implements _$$ProductAddedCopyWith<$Res> {
  __$$ProductAddedCopyWithImpl(
      _$ProductAdded _value, $Res Function(_$ProductAdded) _then)
      : super(_value, (v) => _then(v as _$ProductAdded));

  @override
  _$ProductAdded get _value => super._value as _$ProductAdded;

  @override
  $Res call({
    Object? product = freezed,
  }) {
    return _then(_$ProductAdded(
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
    ));
  }

  @override
  $ProductCopyWith<$Res> get product {
    return $ProductCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value));
    });
  }
}

/// @nodoc

class _$ProductAdded implements ProductAdded {
  const _$ProductAdded({required this.product});

  @override
  final Product product;

  @override
  String toString() {
    return 'CartEvent.added(product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductAdded &&
            const DeepCollectionEquality().equals(other.product, product));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(product));

  @JsonKey(ignore: true)
  @override
  _$$ProductAddedCopyWith<_$ProductAdded> get copyWith =>
      __$$ProductAddedCopyWithImpl<_$ProductAdded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Product product) added,
    required TResult Function(CartItem item) removed,
    required TResult Function(CartItem item) countIncreased,
    required TResult Function(CartItem item) countDecreased,
  }) {
    return added(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Product product)? added,
    TResult Function(CartItem item)? removed,
    TResult Function(CartItem item)? countIncreased,
    TResult Function(CartItem item)? countDecreased,
  }) {
    return added?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Product product)? added,
    TResult Function(CartItem item)? removed,
    TResult Function(CartItem item)? countIncreased,
    TResult Function(CartItem item)? countDecreased,
    required TResult orElse(),
  }) {
    if (added != null) {
      return added(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductAdded value) added,
    required TResult Function(CartItemRemoved value) removed,
    required TResult Function(CartItemCountIncreased value) countIncreased,
    required TResult Function(CartItemCountDecreased value) countDecreased,
  }) {
    return added(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ProductAdded value)? added,
    TResult Function(CartItemRemoved value)? removed,
    TResult Function(CartItemCountIncreased value)? countIncreased,
    TResult Function(CartItemCountDecreased value)? countDecreased,
  }) {
    return added?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductAdded value)? added,
    TResult Function(CartItemRemoved value)? removed,
    TResult Function(CartItemCountIncreased value)? countIncreased,
    TResult Function(CartItemCountDecreased value)? countDecreased,
    required TResult orElse(),
  }) {
    if (added != null) {
      return added(this);
    }
    return orElse();
  }
}

abstract class ProductAdded implements CartEvent {
  const factory ProductAdded({required final Product product}) = _$ProductAdded;

  Product get product => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ProductAddedCopyWith<_$ProductAdded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CartItemRemovedCopyWith<$Res> {
  factory _$$CartItemRemovedCopyWith(
          _$CartItemRemoved value, $Res Function(_$CartItemRemoved) then) =
      __$$CartItemRemovedCopyWithImpl<$Res>;
  $Res call({CartItem item});

  $CartItemCopyWith<$Res> get item;
}

/// @nodoc
class __$$CartItemRemovedCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res>
    implements _$$CartItemRemovedCopyWith<$Res> {
  __$$CartItemRemovedCopyWithImpl(
      _$CartItemRemoved _value, $Res Function(_$CartItemRemoved) _then)
      : super(_value, (v) => _then(v as _$CartItemRemoved));

  @override
  _$CartItemRemoved get _value => super._value as _$CartItemRemoved;

  @override
  $Res call({
    Object? item = freezed,
  }) {
    return _then(_$CartItemRemoved(
      item: item == freezed
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as CartItem,
    ));
  }

  @override
  $CartItemCopyWith<$Res> get item {
    return $CartItemCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value));
    });
  }
}

/// @nodoc

class _$CartItemRemoved implements CartItemRemoved {
  const _$CartItemRemoved({required this.item});

  @override
  final CartItem item;

  @override
  String toString() {
    return 'CartEvent.removed(item: $item)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartItemRemoved &&
            const DeepCollectionEquality().equals(other.item, item));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(item));

  @JsonKey(ignore: true)
  @override
  _$$CartItemRemovedCopyWith<_$CartItemRemoved> get copyWith =>
      __$$CartItemRemovedCopyWithImpl<_$CartItemRemoved>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Product product) added,
    required TResult Function(CartItem item) removed,
    required TResult Function(CartItem item) countIncreased,
    required TResult Function(CartItem item) countDecreased,
  }) {
    return removed(item);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Product product)? added,
    TResult Function(CartItem item)? removed,
    TResult Function(CartItem item)? countIncreased,
    TResult Function(CartItem item)? countDecreased,
  }) {
    return removed?.call(item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Product product)? added,
    TResult Function(CartItem item)? removed,
    TResult Function(CartItem item)? countIncreased,
    TResult Function(CartItem item)? countDecreased,
    required TResult orElse(),
  }) {
    if (removed != null) {
      return removed(item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductAdded value) added,
    required TResult Function(CartItemRemoved value) removed,
    required TResult Function(CartItemCountIncreased value) countIncreased,
    required TResult Function(CartItemCountDecreased value) countDecreased,
  }) {
    return removed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ProductAdded value)? added,
    TResult Function(CartItemRemoved value)? removed,
    TResult Function(CartItemCountIncreased value)? countIncreased,
    TResult Function(CartItemCountDecreased value)? countDecreased,
  }) {
    return removed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductAdded value)? added,
    TResult Function(CartItemRemoved value)? removed,
    TResult Function(CartItemCountIncreased value)? countIncreased,
    TResult Function(CartItemCountDecreased value)? countDecreased,
    required TResult orElse(),
  }) {
    if (removed != null) {
      return removed(this);
    }
    return orElse();
  }
}

abstract class CartItemRemoved implements CartEvent {
  const factory CartItemRemoved({required final CartItem item}) =
      _$CartItemRemoved;

  CartItem get item => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$CartItemRemovedCopyWith<_$CartItemRemoved> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CartItemCountIncreasedCopyWith<$Res> {
  factory _$$CartItemCountIncreasedCopyWith(_$CartItemCountIncreased value,
          $Res Function(_$CartItemCountIncreased) then) =
      __$$CartItemCountIncreasedCopyWithImpl<$Res>;
  $Res call({CartItem item});

  $CartItemCopyWith<$Res> get item;
}

/// @nodoc
class __$$CartItemCountIncreasedCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res>
    implements _$$CartItemCountIncreasedCopyWith<$Res> {
  __$$CartItemCountIncreasedCopyWithImpl(_$CartItemCountIncreased _value,
      $Res Function(_$CartItemCountIncreased) _then)
      : super(_value, (v) => _then(v as _$CartItemCountIncreased));

  @override
  _$CartItemCountIncreased get _value =>
      super._value as _$CartItemCountIncreased;

  @override
  $Res call({
    Object? item = freezed,
  }) {
    return _then(_$CartItemCountIncreased(
      item: item == freezed
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as CartItem,
    ));
  }

  @override
  $CartItemCopyWith<$Res> get item {
    return $CartItemCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value));
    });
  }
}

/// @nodoc

class _$CartItemCountIncreased implements CartItemCountIncreased {
  const _$CartItemCountIncreased({required this.item});

  @override
  final CartItem item;

  @override
  String toString() {
    return 'CartEvent.countIncreased(item: $item)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartItemCountIncreased &&
            const DeepCollectionEquality().equals(other.item, item));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(item));

  @JsonKey(ignore: true)
  @override
  _$$CartItemCountIncreasedCopyWith<_$CartItemCountIncreased> get copyWith =>
      __$$CartItemCountIncreasedCopyWithImpl<_$CartItemCountIncreased>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Product product) added,
    required TResult Function(CartItem item) removed,
    required TResult Function(CartItem item) countIncreased,
    required TResult Function(CartItem item) countDecreased,
  }) {
    return countIncreased(item);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Product product)? added,
    TResult Function(CartItem item)? removed,
    TResult Function(CartItem item)? countIncreased,
    TResult Function(CartItem item)? countDecreased,
  }) {
    return countIncreased?.call(item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Product product)? added,
    TResult Function(CartItem item)? removed,
    TResult Function(CartItem item)? countIncreased,
    TResult Function(CartItem item)? countDecreased,
    required TResult orElse(),
  }) {
    if (countIncreased != null) {
      return countIncreased(item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductAdded value) added,
    required TResult Function(CartItemRemoved value) removed,
    required TResult Function(CartItemCountIncreased value) countIncreased,
    required TResult Function(CartItemCountDecreased value) countDecreased,
  }) {
    return countIncreased(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ProductAdded value)? added,
    TResult Function(CartItemRemoved value)? removed,
    TResult Function(CartItemCountIncreased value)? countIncreased,
    TResult Function(CartItemCountDecreased value)? countDecreased,
  }) {
    return countIncreased?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductAdded value)? added,
    TResult Function(CartItemRemoved value)? removed,
    TResult Function(CartItemCountIncreased value)? countIncreased,
    TResult Function(CartItemCountDecreased value)? countDecreased,
    required TResult orElse(),
  }) {
    if (countIncreased != null) {
      return countIncreased(this);
    }
    return orElse();
  }
}

abstract class CartItemCountIncreased implements CartEvent {
  const factory CartItemCountIncreased({required final CartItem item}) =
      _$CartItemCountIncreased;

  CartItem get item => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$CartItemCountIncreasedCopyWith<_$CartItemCountIncreased> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CartItemCountDecreasedCopyWith<$Res> {
  factory _$$CartItemCountDecreasedCopyWith(_$CartItemCountDecreased value,
          $Res Function(_$CartItemCountDecreased) then) =
      __$$CartItemCountDecreasedCopyWithImpl<$Res>;
  $Res call({CartItem item});

  $CartItemCopyWith<$Res> get item;
}

/// @nodoc
class __$$CartItemCountDecreasedCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res>
    implements _$$CartItemCountDecreasedCopyWith<$Res> {
  __$$CartItemCountDecreasedCopyWithImpl(_$CartItemCountDecreased _value,
      $Res Function(_$CartItemCountDecreased) _then)
      : super(_value, (v) => _then(v as _$CartItemCountDecreased));

  @override
  _$CartItemCountDecreased get _value =>
      super._value as _$CartItemCountDecreased;

  @override
  $Res call({
    Object? item = freezed,
  }) {
    return _then(_$CartItemCountDecreased(
      item: item == freezed
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as CartItem,
    ));
  }

  @override
  $CartItemCopyWith<$Res> get item {
    return $CartItemCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value));
    });
  }
}

/// @nodoc

class _$CartItemCountDecreased implements CartItemCountDecreased {
  const _$CartItemCountDecreased({required this.item});

  @override
  final CartItem item;

  @override
  String toString() {
    return 'CartEvent.countDecreased(item: $item)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartItemCountDecreased &&
            const DeepCollectionEquality().equals(other.item, item));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(item));

  @JsonKey(ignore: true)
  @override
  _$$CartItemCountDecreasedCopyWith<_$CartItemCountDecreased> get copyWith =>
      __$$CartItemCountDecreasedCopyWithImpl<_$CartItemCountDecreased>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Product product) added,
    required TResult Function(CartItem item) removed,
    required TResult Function(CartItem item) countIncreased,
    required TResult Function(CartItem item) countDecreased,
  }) {
    return countDecreased(item);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Product product)? added,
    TResult Function(CartItem item)? removed,
    TResult Function(CartItem item)? countIncreased,
    TResult Function(CartItem item)? countDecreased,
  }) {
    return countDecreased?.call(item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Product product)? added,
    TResult Function(CartItem item)? removed,
    TResult Function(CartItem item)? countIncreased,
    TResult Function(CartItem item)? countDecreased,
    required TResult orElse(),
  }) {
    if (countDecreased != null) {
      return countDecreased(item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductAdded value) added,
    required TResult Function(CartItemRemoved value) removed,
    required TResult Function(CartItemCountIncreased value) countIncreased,
    required TResult Function(CartItemCountDecreased value) countDecreased,
  }) {
    return countDecreased(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ProductAdded value)? added,
    TResult Function(CartItemRemoved value)? removed,
    TResult Function(CartItemCountIncreased value)? countIncreased,
    TResult Function(CartItemCountDecreased value)? countDecreased,
  }) {
    return countDecreased?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductAdded value)? added,
    TResult Function(CartItemRemoved value)? removed,
    TResult Function(CartItemCountIncreased value)? countIncreased,
    TResult Function(CartItemCountDecreased value)? countDecreased,
    required TResult orElse(),
  }) {
    if (countDecreased != null) {
      return countDecreased(this);
    }
    return orElse();
  }
}

abstract class CartItemCountDecreased implements CartEvent {
  const factory CartItemCountDecreased({required final CartItem item}) =
      _$CartItemCountDecreased;

  CartItem get item => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$CartItemCountDecreasedCopyWith<_$CartItemCountDecreased> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CartState {
  BuiltList<CartItem> get items => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartStateCopyWith<CartState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res>;
  $Res call({BuiltList<CartItem> items});
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res> implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  final CartState _value;
  // ignore: unused_field
  final $Res Function(CartState) _then;

  @override
  $Res call({
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as BuiltList<CartItem>,
    ));
  }
}

/// @nodoc
abstract class _$$_CartStateCopyWith<$Res> implements $CartStateCopyWith<$Res> {
  factory _$$_CartStateCopyWith(
          _$_CartState value, $Res Function(_$_CartState) then) =
      __$$_CartStateCopyWithImpl<$Res>;
  @override
  $Res call({BuiltList<CartItem> items});
}

/// @nodoc
class __$$_CartStateCopyWithImpl<$Res> extends _$CartStateCopyWithImpl<$Res>
    implements _$$_CartStateCopyWith<$Res> {
  __$$_CartStateCopyWithImpl(
      _$_CartState _value, $Res Function(_$_CartState) _then)
      : super(_value, (v) => _then(v as _$_CartState));

  @override
  _$_CartState get _value => super._value as _$_CartState;

  @override
  $Res call({
    Object? items = freezed,
  }) {
    return _then(_$_CartState(
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as BuiltList<CartItem>,
    ));
  }
}

/// @nodoc

class _$_CartState implements _CartState {
  const _$_CartState({required this.items});

  @override
  final BuiltList<CartItem> items;

  @override
  String toString() {
    return 'CartState(items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartState &&
            const DeepCollectionEquality().equals(other.items, items));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(items));

  @JsonKey(ignore: true)
  @override
  _$$_CartStateCopyWith<_$_CartState> get copyWith =>
      __$$_CartStateCopyWithImpl<_$_CartState>(this, _$identity);
}

abstract class _CartState implements CartState {
  const factory _CartState({required final BuiltList<CartItem> items}) =
      _$_CartState;

  @override
  BuiltList<CartItem> get items => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CartStateCopyWith<_$_CartState> get copyWith =>
      throw _privateConstructorUsedError;
}
