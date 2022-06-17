import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/constants/layout_constants.dart';
import 'package:shopping_app/modules/cart/bloc/cart_bloc.dart';
import 'package:shopping_app/modules/cart/models/cart_item.dart';
import 'package:shopping_app/modules/products/products.dart';

class CartListItem extends StatelessWidget {
  const CartListItem({Key? key, required this.item}) : super(key: key);

  final CartItem item;

  @override
  Widget build(BuildContext context) {
    final bloc =
        Provider.of<CartBloc>(context, listen: true); // = context.watch<T>();

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: LayoutConstants.paddingS),
      child: Row(
        children: [
          IconButton(
              onPressed: () => bloc.add(CartItemRemoved(item: item)),
              icon: const Icon(Icons.close)),
          Expanded(
              child: ProductCard(
            product: item.product,
          )),
          Column(
            children: [
              IconButton(
                  onPressed: () => bloc.add(CartItemCountIncreased(item: item)),
                  icon: const Icon(Icons.add)),
              Text(
                '${item.count}',
                style: Theme.of(context).textTheme.subtitle1,
              ),
              IconButton(
                  onPressed: () => bloc.add(CartItemCountDecreased(item: item)),
                  icon: const Icon(Icons.remove))
            ],
          )
        ],
      ),
    );
  }
}
