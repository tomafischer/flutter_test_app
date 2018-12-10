import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  final String title;
  final String image;
  ProductPage(this.title, this.image);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Details'),
      ),
      body: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(image),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Text(title),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: FlatButton(
                color: Theme.of(context).primaryColor,
                child: Text("Back"),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ),
          ]),
    );
  }
}
