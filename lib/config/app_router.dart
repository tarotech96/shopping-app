import 'package:flutter/material.dart';
import 'package:shopping_app/modules/product_details/product_details.dart';
import 'package:shopping_app/modules/products/products.dart';

class RouteException implements Exception {
  final String message;
  const RouteException(this.message);

  @override
  String toString() {
    if (message.isNotEmpty) return message;
    return "Unknown error";
  }
}

class RouteGenerator {
  static const String productsPage = '/';
  static const String productDetailsPage = '/product-details';
  static const String unknownRoute = 'abc@**123!.com';

  const RouteGenerator._();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case productsPage:
        return MaterialPageRoute(builder: (_) => const ProductsPage());
      case productDetailsPage:
        final arguments = settings.arguments as Map<String, dynamic>;
        final product = arguments['product'] as Product;
        return MaterialPageRoute(
            builder: (_) => ProductDetailsPage(product: product));
      case unknownRoute:
        throw const RouteException('Unknown route');
      default:
        return MaterialPageRoute(builder: (_) => const ProductsPage());
    }
  }
}
