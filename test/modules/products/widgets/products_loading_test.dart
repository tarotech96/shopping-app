import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_app/modules/products/products.dart';
import 'package:shopping_app/widgets/circular_loader.dart';

void main() {
  group('ProductsLoading', () {
    Future<void> _renderWidget(WidgetTester tester, Widget widget) async {
      return await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: widget,
        ),
      ));
    }

    testWidgets('Should render CircularLoader', (tester) async {
      await _renderWidget(tester, const CircularLoader());
      expect(find.byType(CircularLoader), findsOneWidget);
    });
    testWidgets('Should render ProductsLoading', (tester) async {
      await _renderWidget(tester, const ProductsLoading());
      expect(find.byType(ProductsLoading), findsOneWidget);
    });
  });
}
