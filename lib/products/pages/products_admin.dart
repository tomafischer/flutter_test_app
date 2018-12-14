import 'package:flutter/material.dart';
import './products_drawer.dart';
import './info.dart';

import './products.dart';
import './products_create.dart';
import './products_list.dart';

class ProductAdminPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: Column(
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
              onTap: () => Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => ProductAdminPage(),
                    ),
                  ),
            ),
          ],
        ),
        appBar: AppBar(
            title: Text('Admin Page'),
            bottom: TabBar(tabs: <Widget>[
              Tab(
                icon: Icon(Icons.create),
                text: 'Create Product',
              ),
              Tab(icon: Icon(Icons.list), text: 'My Products'),
            ])),
        body: TabBarView(
          children: <Widget>[
            ProductCreatePage(),
            ProductsListPage(),
          ],
        ),
      ),
    );
  }
}

class _ProductAdminPageDrawer extends StatelessWidget {
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
            Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (BuildContext context) => ProductsPage(),
            ));
          },
        ),
        ListTile(
          title: Text("Manage Products"),
          onTap: () => Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => ProductAdminPage(),
                ),
              ),
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
    );
  }
}
