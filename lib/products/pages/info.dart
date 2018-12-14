import 'package:flutter/material.dart';
import './products_drawer.dart';

class AppInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: ProductsDrawer(),
        appBar: AppBar(
          title: Text("AppInfo"),
        ),
        body: Center(child: Text("This awesome app was done by me.")),
      ),
    );
  }
}
