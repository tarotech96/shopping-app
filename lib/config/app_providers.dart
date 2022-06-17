import 'package:flutter_bloc/flutter_bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:provider/single_child_widget.dart';
import 'package:shopping_app/modules/cart/bloc/cart_bloc.dart';
import 'package:shopping_app/modules/products/products.dart';

class AppProviders {
  /// Registry list providers of the app
  List<SingleChildWidget> providers() {
    return List.from([
      // ProductsBloc provider
      BlocProvider(
          create: (_) => ProductsBloc(repository: ProductsRepository())),

      // CartBloc provider
      BlocProvider(create: (_) => CartBloc())
    ]);
  }
}
