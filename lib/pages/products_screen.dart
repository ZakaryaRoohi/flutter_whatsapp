import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/models/product.dart';
import 'package:flutter_whatsapp/services/product-services.dart';

class ProductsScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new ProductsScreenState();

}

class ProductsScreenState extends State<ProductsScreen> {
  List<Product> _products = [];
  int _currentPage = 1;

  @override
  void initState() {
    super.initState();
    _getProducts();
  }


  _getProducts({ int page : 1 }) async {

    var response = await ProductService.getProducts(page);
    print(response['products']);

    setState(() {
      // _products.addAll(response['products']);
      // _currentPage = response["current_page"];

      _products.addAll(response['products']);
      print(_products[0].createdAt +"##############xxx######");
      print(_products[1].createdAt +"##############xxx######");
      print(_products[2].createdAt +"##############xxx######");
      print(_products[3].createdAt +"##############xxx######");
      print(_products[4].createdAt +"##############xxx######");
      print(_products[5].createdAt +"##############xxx######");
      print(_products.length);

    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Center(
      child: new Text("Products" , style: TextStyle(fontSize: 20),),
    );
  }

}