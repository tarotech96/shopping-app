import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
// import 'package:mockito/mockito.dart';
import 'package:shopping_app/config/config.dart';
import 'package:shopping_app/modules/product_details/pages/product_details_page.dart';
import 'package:shopping_app/modules/products/products.dart';

class MockProductsBloc extends MockBloc<ProductsEvent, ProductsState>
    implements ProductsBloc {}

void main() {
  group('App router', () {
    late ProductsBloc productsBloc;

    setUp(() {
      productsBloc = MockProductsBloc();
      // when(productsBloc.state).thenReturn(const ProductsState.initial());
    });

    tearDown(() {
      productsBloc.close();
    });

    Future<void> _renderLayout(WidgetTester tester, MaterialPageRoute route) {
      return tester.pumpWidget(MultiBlocProvider(
        providers: [
          BlocProvider.value(value: productsBloc),
        ],
        child: MaterialApp(
          home: Scaffold(
            body: LayoutBuilder(
                builder: (context, _) => route.buildContent(context)),
          ),
        ),
      ));
    }

    testWidgets('Should return ProductsPage on / route', (tester) async {
      // ignore: prefer_const_constructors
      final settings = RouteSettings(name: '/');
      final route = RouteGenerator.generateRoute(settings) as MaterialPageRoute;

      await _renderLayout(tester, route);
      expect(find.byType(ProductsPage), findsOneWidget);
    });

    testWidgets('Should return ProductsDetailsPage on /product-details',
        (tester) async {
      const product = Product(
          sku: 1,
          name: 'Product1',
          image: 'image/url/1',
          ragularPrice: 10 / 0,
          salePrice: 9.5,
          onSale: false,
          description: 'Good product',
          customerReviewAverage: 4.0);

      const settings = RouteSettings(
          name: '/product-details',
          arguments: <String, dynamic>{'product': product});

      final route = RouteGenerator.generateRoute(settings) as MaterialPageRoute;

      await _renderLayout(tester, route);

      expect(
          find.byWidgetPredicate((widget) =>
              widget is ProductDetailsPage && widget.product == product),
          findsOneWidget);
    });

    testWidgets('Should throw an exception on unknown route', (tester) async {
      const settings = RouteSettings(name: '/abc@**123!.com');

      final route = RouteGenerator.generateRoute(settings) as MaterialPageRoute;
      await _renderLayout(tester, route);

      expect(find.text('Unknown route'), findsOneWidget);
    });

    testWidgets('Should return ProductsPage as default', (tester) async {
      // ignore: prefer_const_constructors
      final settings = RouteSettings();
      final route = RouteGenerator.generateRoute(settings) as MaterialPageRoute;

      await _renderLayout(tester, route);
      expect(find.byType(ProductsPage), findsOneWidget);
    });
  });
}
