import 'package:flutter/material.dart';
import 'package:shopping_app/constans.dart';
import 'package:shopping_app/models/products.dart';
import 'package:shopping_app/screens/details_screen/components/add_to_cart.dart';
import 'package:shopping_app/screens/details_screen/components/cart_counter.dart';
import 'package:shopping_app/screens/details_screen/components/color_and_size.dart';
import 'package:shopping_app/screens/details_screen/components/counter_with_fav_button.dart';
import 'package:shopping_app/screens/details_screen/components/description.dart';
import 'package:shopping_app/screens/details_screen/components/product_title_with_image.dart';

class DetailsBody extends StatelessWidget {
  const DetailsBody({super.key, required this.product});
  final Product product;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                      top: size.height * 0.12,
                      left: kDefaultPadding,
                      right: kDefaultPadding),
                  //height: 500.0,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: [
                      ColorAndSize(product: product),
                      const SizedBox(height: kDefaultPadding / 2),
                      Description(product: product),
                      const SizedBox(height: kDefaultPadding / 2),
                      CounterWithFavButton(),
                      const SizedBox(height: kDefaultPadding / 2),
                      AddToCart(
                        product: product,
                        press: (() {
                          print('Buy now tapped');
                        }),
                      ),
                    ],
                  ),
                ),
                ProductTitleWithImage(product: product),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
