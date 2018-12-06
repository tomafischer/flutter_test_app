import 'package:flutter/material.dart';

class ProductControl extends StatelessWidget {
  final Function addProduct;
  
  ProductControl(this.addProduct);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        addProduct('Sweet water');
      },
      child: Text("Add products"),
      color: Theme.of(context).primaryColor,
    );
  }
}
