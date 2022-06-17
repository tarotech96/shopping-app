import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_app/modules/products/products.dart';

void main() {
  group('ProductsError', () {
    testWidgets('Should render ProductsError', (tester) async {
      await tester
          .pumpWidget(const MaterialApp(home: Scaffold(body: ProductsError())));

      expect(find.byType(ProductsError), findsOneWidget);
    });
  });
}
