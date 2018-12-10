import 'package:flutter/material.dart';
import './products.dart';
import './product_control.dart';


class ProductManager extends StatefulWidget {
  final Map startingProduct;
  ProductManager({this.startingProduct});

  @override
  State<StatefulWidget> createState() {
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<Map<String,String>> _products = [];

  @override
  void initState() {
    super.initState();
    if(widget.startingProduct != null){
      _products.add(widget.startingProduct);
    }
  }

  void _addProduct(Map<String,String> product) {
    setState(() {
      _products.add(product);
      print(_products);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            margin: EdgeInsets.all(10.0), child: ProductControl(_addProduct)),
        Expanded(
            child: Products(
              _products,
            ))
      ],
    );
  }
}
