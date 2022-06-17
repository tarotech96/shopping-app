import 'package:flutter/material.dart';
import 'package:shopping_app/constants/layout_constants.dart';
import 'package:shopping_app/modules/products/products.dart';
import 'package:shopping_app/widgets/sized_network_image.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 1.0,
      child: Container(
        padding: const EdgeInsets.all(LayoutConstants.paddingM),
        color: Colors.white,
        child: Row(
          children: [
            SizedNetworkImage(imageUrl: product.image, imageWidth: 88.0),
            const SizedBox(
              width: LayoutConstants.spaceL,
            ),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name,
                  style: Theme.of(context).textTheme.subtitle1,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
                const SizedBox(height: LayoutConstants.spaceM),
                ProductPrice(
                    onSale: product.onSale,
                    regularPrice: product.ragularPrice,
                    salePrice: product.salePrice)
              ],
            ))
          ],
        ),
      ),
    );
  }
}
