import 'package:flutter/material.dart';
import 'package:shopping_app/modules/product_details/product_details.dart';
import 'package:shopping_app/modules/products/models/product.dart';
import 'package:shopping_app/widgets/custom_app_bar.dart';

class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Details'),
      body: ProductDetailsContent(product: product),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.black,
        label: const Icon(Icons.add_shopping_cart),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
