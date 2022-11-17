import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;
  Product({
    required this.image,
    required this.title,
    required this.description,
    required this.price,
    required this.size,
    required this.id,
    required this.color,
  });
}

List<Product> products = [
  Product(
    image: 'assets/images/bag_1.png',
    title: 'Office Code',
    description:
        'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words',
    price: 234,
    size: 12,
    id: 1,
    color: const Color.fromRGBO(184, 116, 126, 1),
  ),
  Product(
    image: 'assets/images/bag_2.png',
    title: 'Belt Bag',
    description:
        'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words',
    price: 310,
    size: 8,
    id: 2,
    color: const Color.fromRGBO(36, 87, 107, 1),
  ),
  Product(
    image: 'assets/images/bag_3.png',
    title: 'Side Bag',
    description:
        'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words',
    price: 350,
    size: 12,
    id: 3,
    color: const Color.fromRGBO(202, 152, 147, 1),
  ),
  Product(
    image: 'assets/images/bag_4.png',
    title: 'Picnic Bag',
    description:
        'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words',
    price: 350,
    size: 12,
    id: 4,
    color: const Color.fromRGBO(235, 218, 222, 1),
  ),
  Product(
    image: 'assets/images/bag_5.png',
    title: 'Picnic Bag',
    description:
        'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words',
    price: 475,
    size: 14,
    id: 5,
    color: const Color.fromRGBO(69, 116, 154, 1),
  ),
  Product(
    image: 'assets/images/bag_6.png',
    title: 'Picnic Bag',
    description:
        'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words',
    price: 550,
    size: 24,
    id: 6,
    color: const Color.fromRGBO(41, 48, 74, 1),
  ),
];
