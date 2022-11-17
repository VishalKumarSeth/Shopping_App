import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:shopping_app/screens/details_screen/components/cart_counter.dart';

class CounterWithFavButton extends StatelessWidget {
  const CounterWithFavButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const CartCounter(),
        Container(
          padding: const EdgeInsets.all(8),
          height: 32.0,
          width: 32.0,
          decoration: const BoxDecoration(
            color: Color(0xFFFF6464),
            shape: BoxShape.circle,
          ),
          child: Image.asset(
            'assets/icons/wishlist.png',
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
