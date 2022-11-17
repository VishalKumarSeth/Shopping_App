import 'package:flutter/material.dart';
import 'package:shopping_app/constans.dart';
import 'package:shopping_app/models/products.dart';
import 'package:shopping_app/screens/details_screen/components/details_body.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.product});
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: DetailsBody(product: product),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: product.color,
      leading: IconButton(
        onPressed: (() {
          Navigator.pop(context);
        }),
        icon: const Icon(
          Icons.arrow_back,
          color: Colors.white,
          size: 30,
        ),
      ),
      actions: [
        IconButton(
            onPressed: (() {}),
            icon: const Icon(
              Icons.search,
              color: Colors.white,
              size: 30,
            )),
        IconButton(
          onPressed: (() {}),
          icon: const Icon(
            Icons.shopping_cart,
            color: Colors.white,
            size: 30,
          ),
        ),
        const SizedBox(
          width: kDefaultPadding / 2,
        )
      ],
    );
  }
}
