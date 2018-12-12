import 'package:flutter/material.dart';
import './products.dart';

class AuthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Login')),
        body: Center(
            child: FlatButton(
          child: Text('logon'),
          onPressed: () {
            print('loged on');
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (BuildContext context) => ProductsPage(),
              ),
            );
          },
        )),
    );
  }
}
