import 'package:flutter/material.dart';
import './auth.dart';
class ProductsStartPage extends StatelessWidget{
  @override
    Widget build(BuildContext context) {
      
      return MaterialApp(
        title: "Tom's products", 
        home:AuthPage(),
        theme: ThemeData(primarySwatch: Colors.lime)
      );
    }
}