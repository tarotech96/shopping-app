import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_app/modules/products/products.dart';

void main() {
  group('ProductCard', () {
    const product = Product(
        sku: 1,
        name: 'Iphone',
        image: 'iphone/url/1',
        ragularPrice: 1300.50,
        salePrice: 1299.9,
        onSale: true,
        description: 'Best smart phone',
        customerReviewAverage: 5.0);

    testWidgets('Should render product card page with a given product item',
        (tester) async {
      await tester.pumpWidget(const MaterialApp(
        home: Scaffold(
          body: ProductCard(product: product),
        ),
      ));

      expect(find.byType(ProductCard), findsOneWidget);
    });
  });
}
