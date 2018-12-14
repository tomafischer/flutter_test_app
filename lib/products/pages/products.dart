import 'package:flutter/material.dart';
import '../product_manager.dart';
import './products_drawer.dart';

import './info.dart';

class ProductsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            AppBar(
              automaticallyImplyLeading: false,
              title: Text("Choose"),
            ),
            ListTile(
              title: Text("All Products"),
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (BuildContext context) => ProductsPage(),
                ));
              },
            ),
            ListTile(
              title: Text("Manage Products"),
              onTap: () => Navigator.of(context).pushReplacementNamed('/admin'),
            ),
            ListTile(
              title: Text("Info"),
              onTap: () => Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (BuildContext context) => AppInfo(),
                    ),
                  ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("Tom's easy List"),
      ),
      body: ProductManager(
          // startingProduct: "Tom's favorite food",
          ),
    );
  }
}
