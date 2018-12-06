import 'package:flutter/material.dart';
import './countup.dart';
import './endlessList.dart';
import './products/product_manager.dart';
main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('[MyApp] build');
    return EndlessListScaffolding();
    //return CountUpScaffolding();
    //return ProductMangerScaffolding();
  }
}

