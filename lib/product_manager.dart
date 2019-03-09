import 'package:flutter/material.dart';
import './products.dart';

class ProductManager extends StatefulWidget {
  final String startingProduct;

  // Receive props and save it to startingProduct
  ProductManager(this.startingProduct);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ProductManager();
  }
}

class _ProductManager extends State<ProductManager> {
  List<String> _products = [];

  @override
  void initState() {
    // Init state by passed props
    _products.add(widget.startingProduct);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            margin: EdgeInsets.all(10),
            child: RaisedButton(
                onPressed: () {
                  setState(() {
                    _products.add('Advanced Food Tester');
                  });
                },
                child: Text('Add Product'))),
        Products(_products)
      ],
    );
  }
}
