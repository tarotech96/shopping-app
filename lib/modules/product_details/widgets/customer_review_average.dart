import 'package:flutter/material.dart';

class CustomerReviewAverage extends StatelessWidget {
  const CustomerReviewAverage({Key? key, required this.average})
      : super(key: key);

  final double average;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '$average',
          style: Theme.of(context).textTheme.subtitle1,
        ),
        const Icon(
          Icons.star,
          size: 20.0,
          color: Colors.yellow,
        )
      ],
    );
  }
}
