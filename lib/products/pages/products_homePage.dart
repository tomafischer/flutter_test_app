import 'package:flutter/material.dart';
import '../product_manager.dart';

class ProductMangerHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Products List",
      home: Scaffold(
          appBar: AppBar(
            title: Text("Tom's easy List"),
          ),
          body: ProductManager(
           // startingProduct: "Tom's favorite food",
          )),
      theme: ThemeData(primarySwatch: Colors.lime),
    );
  }
}
