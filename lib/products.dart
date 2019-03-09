import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String> products; // When props change, replace it not manipulate

  Products(this.products) {
    print('[Products Widget] Constructor');
  }

  @override
  Widget build(BuildContext context) {
    print('[Products Widget] build()');
    return Column(
      children: products
          .map((element) => Card(
                child: Column(
                  children: [Image.asset('assets/food.jpg'), Text(element)],
                ),
              ))
          .toList(),
    );
  }
}
