import 'package:flutter/material.dart';
import 'package:shopping_app/constans.dart';

class CartCounter extends StatefulWidget {
  const CartCounter({super.key});

  @override
  State<CartCounter> createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numberOfItems = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildOutlineButton(
            iconData: Icons.remove,
            press: () {
              setState(() {
                numberOfItems = numberOfItems > 1 ? numberOfItems - 1 : 1;
              });
            }),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
          child: Text(numberOfItems.toString().padLeft(2, '0'),
              style: Theme.of(context).textTheme.headline6),
        ),
        buildOutlineButton(
            iconData: Icons.add,
            press: () {
              setState(() {
                numberOfItems = numberOfItems + 1;
              });
            }),
      ],
    );
  }

  SizedBox buildOutlineButton(
      {required IconData iconData, required VoidCallback press}) {
    return SizedBox(
      width: 40.0,
      height: 32.0,
      child: OutlinedButton(
        onPressed: press,
        style: ButtonStyle(
          padding: MaterialStateProperty.all(EdgeInsets.zero),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(13),
            ),
          ),
        ),
        child: Icon(
          iconData,
          color: kTextColor,
        ),
      ),
    );
  }
}
