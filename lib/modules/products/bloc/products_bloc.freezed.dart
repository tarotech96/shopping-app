// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'products_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialLoadStarted,
    required TResult Function(bool isRefresh) loadStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialLoadStarted,
    TResult Function(bool isRefresh)? loadStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialLoadStarted,
    TResult Function(bool isRefresh)? loadStarted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductsInitialLoadStarted value)
        initialLoadStarted,
    required TResult Function(ProductsLoadStarted value) loadStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ProductsInitialLoadStarted value)? initialLoadStarted,
    TResult Function(ProductsLoadStarted value)? loadStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductsInitialLoadStarted value)? initialLoadStarted,
    TResult Function(ProductsLoadStarted value)? loadStarted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsEventCopyWith<$Res> {
  factory $ProductsEventCopyWith(
          ProductsEvent value, $Res Function(ProductsEvent) then) =
      _$ProductsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProductsEventCopyWithImpl<$Res>
    implements $ProductsEventCopyWith<$Res> {
  _$ProductsEventCopyWithImpl(this._value, this._then);

  final ProductsEvent _value;
  // ignore: unused_field
  final $Res Function(ProductsEvent) _then;
}

/// @nodoc
abstract class _$$ProductsInitialLoadStartedCopyWith<$Res> {
  factory _$$ProductsInitialLoadStartedCopyWith(
          _$ProductsInitialLoadStarted value,
          $Res Function(_$ProductsInitialLoadStarted) then) =
      __$$ProductsInitialLoadStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProductsInitialLoadStartedCopyWithImpl<$Res>
    extends _$ProductsEventCopyWithImpl<$Res>
    implements _$$ProductsInitialLoadStartedCopyWith<$Res> {
  __$$ProductsInitialLoadStartedCopyWithImpl(
      _$ProductsInitialLoadStarted _value,
      $Res Function(_$ProductsInitialLoadStarted) _then)
      : super(_value, (v) => _then(v as _$ProductsInitialLoadStarted));

  @override
  _$ProductsInitialLoadStarted get _value =>
      super._value as _$ProductsInitialLoadStarted;
}

/// @nodoc

class _$ProductsInitialLoadStarted implements ProductsInitialLoadStarted {
  const _$ProductsInitialLoadStarted();

  @override
  String toString() {
    return 'ProductsEvent.initialLoadStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsInitialLoadStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialLoadStarted,
    required TResult Function(bool isRefresh) loadStarted,
  }) {
    return initialLoadStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialLoadStarted,
    TResult Function(bool isRefresh)? loadStarted,
  }) {
    return initialLoadStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialLoadStarted,
    TResult Function(bool isRefresh)? loadStarted,
    required TResult orElse(),
  }) {
    if (initialLoadStarted != null) {
      return initialLoadStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductsInitialLoadStarted value)
        initialLoadStarted,
    required TResult Function(ProductsLoadStarted value) loadStarted,
  }) {
    return initialLoadStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ProductsInitialLoadStarted value)? initialLoadStarted,
    TResult Function(ProductsLoadStarted value)? loadStarted,
  }) {
    return initialLoadStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductsInitialLoadStarted value)? initialLoadStarted,
    TResult Function(ProductsLoadStarted value)? loadStarted,
    required TResult orElse(),
  }) {
    if (initialLoadStarted != null) {
      return initialLoadStarted(this);
    }
    return orElse();
  }
}

abstract class ProductsInitialLoadStarted implements ProductsEvent {
  const factory ProductsInitialLoadStarted() = _$ProductsInitialLoadStarted;
}

/// @nodoc
abstract class _$$ProductsLoadStartedCopyWith<$Res> {
  factory _$$ProductsLoadStartedCopyWith(_$ProductsLoadStarted value,
          $Res Function(_$ProductsLoadStarted) then) =
      __$$ProductsLoadStartedCopyWithImpl<$Res>;
  $Res call({bool isRefresh});
}

/// @nodoc
class __$$ProductsLoadStartedCopyWithImpl<$Res>
    extends _$ProductsEventCopyWithImpl<$Res>
    implements _$$ProductsLoadStartedCopyWith<$Res> {
  __$$ProductsLoadStartedCopyWithImpl(
      _$ProductsLoadStarted _value, $Res Function(_$ProductsLoadStarted) _then)
      : super(_value, (v) => _then(v as _$ProductsLoadStarted));

  @override
  _$ProductsLoadStarted get _value => super._value as _$ProductsLoadStarted;

  @override
  $Res call({
    Object? isRefresh = freezed,
  }) {
    return _then(_$ProductsLoadStarted(
      isRefresh: isRefresh == freezed
          ? _value.isRefresh
          : isRefresh // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ProductsLoadStarted implements ProductsLoadStarted {
  const _$ProductsLoadStarted({this.isRefresh = false});

  @override
  @JsonKey()
  final bool isRefresh;

  @override
  String toString() {
    return 'ProductsEvent.loadStarted(isRefresh: $isRefresh)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsLoadStarted &&
            const DeepCollectionEquality().equals(other.isRefresh, isRefresh));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(isRefresh));

  @JsonKey(ignore: true)
  @override
  _$$ProductsLoadStartedCopyWith<_$ProductsLoadStarted> get copyWith =>
      __$$ProductsLoadStartedCopyWithImpl<_$ProductsLoadStarted>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialLoadStarted,
    required TResult Function(bool isRefresh) loadStarted,
  }) {
    return loadStarted(isRefresh);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialLoadStarted,
    TResult Function(bool isRefresh)? loadStarted,
  }) {
    return loadStarted?.call(isRefresh);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialLoadStarted,
    TResult Function(bool isRefresh)? loadStarted,
    required TResult orElse(),
  }) {
    if (loadStarted != null) {
      return loadStarted(isRefresh);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductsInitialLoadStarted value)
        initialLoadStarted,
    required TResult Function(ProductsLoadStarted value) loadStarted,
  }) {
    return loadStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ProductsInitialLoadStarted value)? initialLoadStarted,
    TResult Function(ProductsLoadStarted value)? loadStarted,
  }) {
    return loadStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductsInitialLoadStarted value)? initialLoadStarted,
    TResult Function(ProductsLoadStarted value)? loadStarted,
    required TResult orElse(),
  }) {
    if (loadStarted != null) {
      return loadStarted(this);
    }
    return orElse();
  }
}

abstract class ProductsLoadStarted implements ProductsEvent {
  const factory ProductsLoadStarted({final bool isRefresh}) =
      _$ProductsLoadStarted;

  bool get isRefresh => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ProductsLoadStartedCopyWith<_$ProductsLoadStarted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProductsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(BuiltList<Product> products, int total)
        loadSuccess,
    required TResult Function() loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(BuiltList<Product> products, int total)? loadSuccess,
    TResult Function()? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(BuiltList<Product> products, int total)? loadSuccess,
    TResult Function()? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductsInitial value) initial,
    required TResult Function(ProductsLoadSuccess value) loadSuccess,
    required TResult Function(ProductsLoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ProductsInitial value)? initial,
    TResult Function(ProductsLoadSuccess value)? loadSuccess,
    TResult Function(ProductsLoadFailure value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductsInitial value)? initial,
    TResult Function(ProductsLoadSuccess value)? loadSuccess,
    TResult Function(ProductsLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsStateCopyWith<$Res> {
  factory $ProductsStateCopyWith(
          ProductsState value, $Res Function(ProductsState) then) =
      _$ProductsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProductsStateCopyWithImpl<$Res>
    implements $ProductsStateCopyWith<$Res> {
  _$ProductsStateCopyWithImpl(this._value, this._then);

  final ProductsState _value;
  // ignore: unused_field
  final $Res Function(ProductsState) _then;
}

/// @nodoc
abstract class _$$ProductsInitialCopyWith<$Res> {
  factory _$$ProductsInitialCopyWith(
          _$ProductsInitial value, $Res Function(_$ProductsInitial) then) =
      __$$ProductsInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProductsInitialCopyWithImpl<$Res>
    extends _$ProductsStateCopyWithImpl<$Res>
    implements _$$ProductsInitialCopyWith<$Res> {
  __$$ProductsInitialCopyWithImpl(
      _$ProductsInitial _value, $Res Function(_$ProductsInitial) _then)
      : super(_value, (v) => _then(v as _$ProductsInitial));

  @override
  _$ProductsInitial get _value => super._value as _$ProductsInitial;
}

/// @nodoc

class _$ProductsInitial implements ProductsInitial {
  const _$ProductsInitial();

  @override
  String toString() {
    return 'ProductsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProductsInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(BuiltList<Product> products, int total)
        loadSuccess,
    required TResult Function() loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(BuiltList<Product> products, int total)? loadSuccess,
    TResult Function()? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(BuiltList<Product> products, int total)? loadSuccess,
    TResult Function()? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductsInitial value) initial,
    required TResult Function(ProductsLoadSuccess value) loadSuccess,
    required TResult Function(ProductsLoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ProductsInitial value)? initial,
    TResult Function(ProductsLoadSuccess value)? loadSuccess,
    TResult Function(ProductsLoadFailure value)? loadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductsInitial value)? initial,
    TResult Function(ProductsLoadSuccess value)? loadSuccess,
    TResult Function(ProductsLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ProductsInitial implements ProductsState {
  const factory ProductsInitial() = _$ProductsInitial;
}

/// @nodoc
abstract class _$$ProductsLoadSuccessCopyWith<$Res> {
  factory _$$ProductsLoadSuccessCopyWith(_$ProductsLoadSuccess value,
          $Res Function(_$ProductsLoadSuccess) then) =
      __$$ProductsLoadSuccessCopyWithImpl<$Res>;
  $Res call({BuiltList<Product> products, int total});
}

/// @nodoc
class __$$ProductsLoadSuccessCopyWithImpl<$Res>
    extends _$ProductsStateCopyWithImpl<$Res>
    implements _$$ProductsLoadSuccessCopyWith<$Res> {
  __$$ProductsLoadSuccessCopyWithImpl(
      _$ProductsLoadSuccess _value, $Res Function(_$ProductsLoadSuccess) _then)
      : super(_value, (v) => _then(v as _$ProductsLoadSuccess));

  @override
  _$ProductsLoadSuccess get _value => super._value as _$ProductsLoadSuccess;

  @override
  $Res call({
    Object? products = freezed,
    Object? total = freezed,
  }) {
    return _then(_$ProductsLoadSuccess(
      products: products == freezed
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as BuiltList<Product>,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ProductsLoadSuccess implements ProductsLoadSuccess {
  const _$ProductsLoadSuccess({required this.products, required this.total});

  @override
  final BuiltList<Product> products;
  @override
  final int total;

  @override
  String toString() {
    return 'ProductsState.loadSuccess(products: $products, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsLoadSuccess &&
            const DeepCollectionEquality().equals(other.products, products) &&
            const DeepCollectionEquality().equals(other.total, total));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(products),
      const DeepCollectionEquality().hash(total));

  @JsonKey(ignore: true)
  @override
  _$$ProductsLoadSuccessCopyWith<_$ProductsLoadSuccess> get copyWith =>
      __$$ProductsLoadSuccessCopyWithImpl<_$ProductsLoadSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(BuiltList<Product> products, int total)
        loadSuccess,
    required TResult Function() loadFailure,
  }) {
    return loadSuccess(products, total);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(BuiltList<Product> products, int total)? loadSuccess,
    TResult Function()? loadFailure,
  }) {
    return loadSuccess?.call(products, total);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(BuiltList<Product> products, int total)? loadSuccess,
    TResult Function()? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(products, total);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductsInitial value) initial,
    required TResult Function(ProductsLoadSuccess value) loadSuccess,
    required TResult Function(ProductsLoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ProductsInitial value)? initial,
    TResult Function(ProductsLoadSuccess value)? loadSuccess,
    TResult Function(ProductsLoadFailure value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductsInitial value)? initial,
    TResult Function(ProductsLoadSuccess value)? loadSuccess,
    TResult Function(ProductsLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class ProductsLoadSuccess implements ProductsState {
  const factory ProductsLoadSuccess(
      {required final BuiltList<Product> products,
      required final int total}) = _$ProductsLoadSuccess;

  BuiltList<Product> get products => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ProductsLoadSuccessCopyWith<_$ProductsLoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProductsLoadFailureCopyWith<$Res> {
  factory _$$ProductsLoadFailureCopyWith(_$ProductsLoadFailure value,
          $Res Function(_$ProductsLoadFailure) then) =
      __$$ProductsLoadFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProductsLoadFailureCopyWithImpl<$Res>
    extends _$ProductsStateCopyWithImpl<$Res>
    implements _$$ProductsLoadFailureCopyWith<$Res> {
  __$$ProductsLoadFailureCopyWithImpl(
      _$ProductsLoadFailure _value, $Res Function(_$ProductsLoadFailure) _then)
      : super(_value, (v) => _then(v as _$ProductsLoadFailure));

  @override
  _$ProductsLoadFailure get _value => super._value as _$ProductsLoadFailure;
}

/// @nodoc

class _$ProductsLoadFailure implements ProductsLoadFailure {
  const _$ProductsLoadFailure();

  @override
  String toString() {
    return 'ProductsState.loadFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProductsLoadFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(BuiltList<Product> products, int total)
        loadSuccess,
    required TResult Function() loadFailure,
  }) {
    return loadFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(BuiltList<Product> products, int total)? loadSuccess,
    TResult Function()? loadFailure,
  }) {
    return loadFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(BuiltList<Product> products, int total)? loadSuccess,
    TResult Function()? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductsInitial value) initial,
    required TResult Function(ProductsLoadSuccess value) loadSuccess,
    required TResult Function(ProductsLoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ProductsInitial value)? initial,
    TResult Function(ProductsLoadSuccess value)? loadSuccess,
    TResult Function(ProductsLoadFailure value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductsInitial value)? initial,
    TResult Function(ProductsLoadSuccess value)? loadSuccess,
    TResult Function(ProductsLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class ProductsLoadFailure implements ProductsState {
  const factory ProductsLoadFailure() = _$ProductsLoadFailure;
}
