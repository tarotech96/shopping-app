import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_app/modules/cart/bloc/cart_bloc.dart';
import 'package:shopping_app/modules/cart/widgets/widgets.dart';
import 'package:shopping_app/widgets/custom_app_bar.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Cart',
        showShoppingCartButton: false,
      ),
      body: BlocBuilder<CartBloc, CartState>(
        builder: (_, state) {
          final cartItems = state.items;
          return cartItems.isNotEmpty
              ? CartListView(cartItems: cartItems)
              : const CartEmplty();
        },
      ),
    );
  }
}
