import 'package:flutter/material.dart';
import './pages/product.dart';

class Products extends StatelessWidget {
  final List<Map<String, String>> products;
  final  Function deleteProduct;
  Products(this.products,{ this.deleteProduct });

  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
      child: Column(children: [
        Image.asset(products[index]['image']),
        Text(products[index]['title']),
        ButtonBar(
          children: <Widget>[
            FlatButton(
              child: Text('Details'),
              onPressed: () {
                print('Clicked Details');
                //Navigation to the details page
                Navigator.of(context).push<bool>(
                  MaterialPageRoute(
                      builder: (context) => ProductPage(
                          products[index]['title'], products[index]['image'])),
                ).then((bool value) {
                  //print(value);
                  if(value){
                    deleteProduct(index);
                  }
                });
              },
            ),
          ],
        )
      ]),
    );
  }

  Widget _buildProductList() {
    Widget productCard;
    if (products.length > 0) {
      productCard = ListView.builder(
        itemCount: products.length,
        itemBuilder: _buildProductItem,
      );
    } else {
      productCard = Center(
        child: Text('No products found'),
      );
    }
    return productCard;
  }

  @override
  Widget build(BuildContext context) {
    return _buildProductList();
  }
}
