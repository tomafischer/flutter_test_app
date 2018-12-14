import 'package:flutter/material.dart';
import './info.dart';
import './products_admin.dart';
import './products.dart';

class ProductsDrawer extends StatelessWidget{
  @override
    Widget build(BuildContext context) {
      return Column(
          children: [
            AppBar(
              automaticallyImplyLeading: false,
              title: Text("Choose"),
            ),
            ListTile(
              title: Text("All Products"),
              onTap: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (BuildContext context) => ProductsPage(),
                  )
                );
              },
            ),
            ListTile(title: Text("Manage Products"),
            onTap: ()=> Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => ProductAdminPage(),
              ),
            ),)
            ,
            ListTile(
              title: Text("Info"),
              onTap: () => Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (BuildContext context) => AppInfo(),
                    ),
                  ),
            ),
          ],
        );
    }
}