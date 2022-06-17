import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_app/modules/products/widgets/product_price.dart';

void main() {
  group('ProductPrice', () {
    const regularPrice = 20.55;
    const salePrice = 19.99;

    testWidgets('Should render regular and sale prices when onSale is true',
        (tester) async {
      await tester.pumpWidget(const MaterialApp(
        home: Scaffold(
            body: ProductPrice(
          onSale: true,
          regularPrice: regularPrice,
          salePrice: salePrice,
        )),
      ));

      expect(find.text('\$$regularPrice \$$salePrice'), findsOneWidget);
    });

    testWidgets('Should render regular price only when onSale is false',
        (tester) async {
      await tester.pumpWidget(const MaterialApp(
        home: Scaffold(
          body: ProductPrice(
              onSale: false, regularPrice: regularPrice, salePrice: salePrice),
        ),
      ));

      expect(find.text('\$$regularPrice'), findsOneWidget);
    });
  });
}
