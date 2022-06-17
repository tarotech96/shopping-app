import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_app/modules/products/products.dart';
import 'package:shopping_app/widgets/custom_app_bar.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Shopping App',
      ),
      body: BlocBuilder<ProductsBloc, ProductsState>(
        builder: (_, state) => state.map<Widget>(
          initial: (_) => const ProductsLoading(),
          loadSuccess: (ProductsLoadSuccess productsLoadSuccessState) =>
              ProductsListView(
            products: productsLoadSuccessState.products,
            productsTotal: productsLoadSuccessState.total,
          ),
          loadFailure: (_) => const ProductsError(),
        ),
      ),
    );
  }
}
