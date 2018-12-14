import 'package:flutter/material.dart';
import './auth.dart';
import './products_admin.dart';
import './products.dart';
import './product.dart';

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
        },
        onGenerateRoute: (RouteSettings settings){
          final List<String> pathElements = settings.name.split('/');
          if(pathElements[0] != ''){
            return null;
          }
          if(pathElements[1] == 'product'){
            final int index = int.parse(pathElements[2]);
          MaterialPageRoute(builder: (BuildContext context) =>ProductPage(
            products[index]
          ))
          
          }
          return null;
        },);
  }
}
