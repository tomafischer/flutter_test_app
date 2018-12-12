import 'package:flutter/material.dart';
import 'dart:async';
class ProductPage extends StatelessWidget {
  final String title;
  final String image;
  ProductPage(this.title, this.image);
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        print('Back button pressed');
        Navigator.of(context).pop(false);
        return Future.value(false);
      },
      child: Scaffold(
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
                  child: Text("Delete"),
                  onPressed: () => Navigator.of(context).pop(true),
                ),
              ),
            ]),
      ),
    );
  }
}
