import 'package:flutter/material.dart';
import 'package:shopping_app/constans.dart';
import 'package:shopping_app/screens/components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        onPressed: (() {}),
        icon: const Icon(
          Icons.arrow_back,
          color: kTextColor,
          size: 30,
        ),
      ),
      actions: [
        IconButton(
            onPressed: (() {}),
            icon: const Icon(
              Icons.search,
              color: kTextColor,
              size: 30,
            )),
        IconButton(
          onPressed: (() {}),
          icon: const Icon(
            Icons.shopping_cart,
            color: kTextColor,
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
