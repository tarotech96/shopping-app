import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:shopping_app/modules/product_details/product_details.dart';
import 'package:shopping_app/modules/products/products.dart';
import 'package:shopping_app/widgets/custom_app_bar.dart';

class MockProductsBloc extends Mock implements ProductsBloc {}

void main() {
  group('ProductsListView', () {
    late ProductsBloc productsBloc;

    setUp(() {
      productsBloc = MockProductsBloc();
    });

    tearDown(() {
      productsBloc.clear();
    });

    final products = <Product>[
      const Product(
          sku: 1,
          name: 'Iphone12',
          image: 'image/url/1',
          ragularPrice: 1250.5,
          salePrice: 1250,
          onSale: true,
          description: 'Nice product',
          customerReviewAverage: 4.5),
      const Product(
          sku: 2,
          name: 'Iphone12 pro',
          image: 'iphone12/url/2',
          ragularPrice: 1280.9,
          salePrice: 1280,
          onSale: true,
          description: 'So good',
          customerReviewAverage: 4.8),
      const Product(
          sku: 3,
          name: 'Iphone13 pro max',
          image: 'iphone13/url/3',
          ragularPrice: 1300,
          salePrice: 1300,
          onSale: false,
          description: 'Incredible smart phone',
          customerReviewAverage: 5.0)
    ].build();

    Future<void> _renderProductsListView(
        WidgetTester tester, int productsTotal) async {
      return await tester.pumpWidget(MultiBlocProvider(
          providers: [BlocProvider.value(value: productsBloc)],
          child: MaterialApp(
            home: Scaffold(
              body: ProductsListView(
                  products: products, productsTotal: productsTotal),
            ),
          )));
    }

    testWidgets('Should render ProductsListView', (tester) async {
      await _renderProductsListView(tester, products.length + 1);

      expect(find.byType(ProductsListView), findsOneWidget);
    });

    testWidgets('Should open ProductDetailsPage on ProductCard click',
        (tester) async {
      final firstProduct = products.first;
      final productsTotal = products.length + 1;

      await _renderProductsListView(tester, productsTotal);

      expect(
          find.byWidgetPredicate((widget) =>
              widget is ProductCard && widget.product == firstProduct),
          findsOneWidget);

      await tester.pump();

      await tester.tap(find.byType(ProductCard));
      await tester.pump(const Duration(seconds: 1));
      expect(
          find.byWidgetPredicate(
              (widget) => widget is CustomAppBar && widget.title == 'Details'),
          findsOneWidget);

      expect(
          find.byWidgetPredicate((widget) =>
              widget is ProductDetailsPage && widget.product == firstProduct),
          findsOneWidget);
    });

    group('Products loading', () {
      group('When bottom of the list is reached', () {
        testWidgets('Should load more products', (tester) async {
          final productsTotal = products.length + 1;

          await _renderProductsListView(tester, productsTotal);

          await tester.drag(find.byType(ListView), const Offset(0.0, -100.0));
          await tester.pump();

          verify(productsBloc.add(const ProductsLoadStarted())).called(1);
        });

        testWidgets(
            'Should not load more products when all products are already loaded',
            (tester) async {
          final productsTotal = products.length;

          await _renderProductsListView(tester, productsTotal);
          await tester.drag(find.byType(ListView), const Offset(0.0, -100.0));
          await tester.pump();

          verifyNever(productsBloc.add(const ProductsLoadStarted()));
        });
      });
    });
  });
}
