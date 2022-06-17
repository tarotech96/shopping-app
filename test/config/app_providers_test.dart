import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
// import 'package:mockito/mockito.dart';
import 'package:provider/single_child_widget.dart';
import 'package:shopping_app/config/config.dart';
import 'package:shopping_app/modules/products/products.dart';

class MockProductsBloc extends MockBloc<ProductsEvent, ProductsState>
    implements ProductsBloc {}

void main() {
  group('App Providers', () {
    late ProductsBloc productsBloc;

    setUp(() {
      productsBloc = MockProductsBloc();
      // when(productsBloc.state).thenReturn(const ProductsState.initial());
    });

    tearDown(() {
      productsBloc.close();
    });

    test('Should return list providers', () {
      final List<SingleChildWidget> providers = [
        BlocProvider.value(value: productsBloc)
      ];

      final appProviders = AppProviders();
      final listProviders = appProviders.providers();
      expect(listProviders.length, providers.length);
    });
  });
}
