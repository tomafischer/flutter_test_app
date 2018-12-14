import 'package:flutter/material.dart';
import './auth.dart';
import './products_admin.dart';
import './products.dart';

class ProductsStartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Tom's products",
        //home: AuthPage(),
        theme: ThemeData(
          primarySwatch: Colors.lime,
        ),
        routes:{
          '/' :  (BuildContext context) => ProductsPage(),
          '/admin' : (BuildContext context) => ProductAdminPage(),
        },);
  }
}
