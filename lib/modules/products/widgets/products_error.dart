import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/constants/constants.dart';
import 'package:shopping_app/modules/products/bloc/products_bloc.dart';

class ProductsError extends StatelessWidget {
  const ProductsError({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Oops, something went wrong...',
            style: Theme.of(context).textTheme.subtitle1,
          ),
          const SizedBox(height: LayoutConstants.spaceM),
          ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.black),
            onPressed: () => Provider.of<ProductsBloc>(context, listen: false)
                .add(const ProductsLoadStarted(isRefresh: true)),
            child: const Text(
              'Retry',
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
