import 'package:bloc_test/bloc_test.dart';
import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/modules/products/products.dart';
import 'package:shopping_app/widgets/custom_app_bar.dart';

class MockProductsBloc extends MockBloc<ProductsEvent, ProductsState>
    implements ProductsBloc {}

void main() {
  group('Product Page', () {
    late ProductsBloc productsBloc;

    setUp(() {
      productsBloc = MockProductsBloc();
    });

    tearDown(() {
      productsBloc.close();
    });

    Future<void> _renderProductsPage(WidgetTester tester) {
      return tester.pumpWidget(MultiProvider(
        providers: [BlocProvider.value(value: productsBloc)],
        child: const MaterialApp(
          home: ProductsPage(),
        ),
      ));
    }

    void _expectCustomAppBarExists() {
      expect(
          find.byWidgetPredicate((widget) =>
              widget is CustomAppBar && widget.title == 'Promoted products'),
          findsOneWidget);
    }

    testWidgets('Should render ProductLoading widget on ProductsInitial state',
        (tester) async {
      when(productsBloc.state).thenReturn(const ProductsState.initial());

      await _renderProductsPage(tester);
      _expectCustomAppBarExists();
      expect(find.byType(ProductsLoading), findsOneWidget);
    });

    testWidgets('Should render ProductsListView widget on ProductsLoadSuccess',
        (tester) async {
      when(productsBloc.state).thenReturn(
          ProductsState.loadSuccess(products: <Product>[].build(), total: 0));

      await _renderProductsPage(tester);
      _expectCustomAppBarExists();
      expect(find.byType(ProductsListView), findsOneWidget);
    });

    testWidgets('Should render ProductsError on productsLoadFailure',
        (tester) async {
      when(productsBloc.state).thenReturn(const ProductsState.loadFailure());
      await _renderProductsPage(tester);
      _expectCustomAppBarExists();
      expect(find.byType(ProductsError), findsOneWidget);
    });
  });
}
