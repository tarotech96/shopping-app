part of 'cart_bloc.dart';

@freezed
class CartState with _$CartState {
  const factory CartState({required BuiltList<CartItem> items}) = _CartState;

  factory CartState.initial() => CartState(items: <CartItem>[].build());
}
