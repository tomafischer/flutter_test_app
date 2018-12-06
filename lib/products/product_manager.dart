import 'package:flutter/material.dart';
import './products.dart';
import './product_control.dart';

class ProductMangerScaffolding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Products List",
      home: Scaffold(
          appBar: AppBar(
            title: Text("Tom's easy List"),
          ),
          body: ProductManager(
            startingProduct: "Tom's favorite food",
          )),
      theme: ThemeData(primarySwatch: Colors.lime),
    );
  }
}

class ProductManager extends StatefulWidget {
  final String startingProduct;
  ProductManager({this.startingProduct});

  @override
  State<StatefulWidget> createState() {
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products = [];

  @override
  void initState() {
    super.initState();
    _products.add(widget.startingProduct);
  }

  void _addProduct(String product) {
    setState(() {
      _products.add(product);
      print(_products);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
          margin: EdgeInsets.all(10.0), child: ProductControl(_addProduct)),
      Products(_products)
    ]);
  }
}
