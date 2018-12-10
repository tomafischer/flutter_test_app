import 'package:flutter/material.dart';
import './countup.dart';
import './endlessList.dart';
import './products/pages/products_homePage.dart';
//import './gridDemo.dart';
import 'package:flutter/rendering.dart';
main() {
  //Flutter: Toggle Debug painting
  //debugPaintSizeEnabled = true;
  //debugPaintPointersEnabled = true;
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('[MyApp] build');
    //return EndlessListScaffolding();
    //return CountUpScaffolding();
    //return GridDemo();
    return ProductMangerHomePage();
  }
}

