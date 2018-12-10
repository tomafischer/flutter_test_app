import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String> products;
  Products([this.products = const []]);

  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
      child: Column(
          children: [Image.asset('assets/food.jpg'), Text(products[index])]),
    );
  }

  Widget _buildProductList(){
    Widget productCard;
    if(products.length >0 ){
      productCard =  ListView.builder(
        itemCount: products.length, 
        itemBuilder: _buildProductItem,);
    } else {
      productCard = Center(child: Text('No products found'),);
    }
    return productCard;
  }

  @override
  Widget build(BuildContext context) {
    return _buildProductList();
  }
}
