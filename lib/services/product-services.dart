import 'dart:convert';

import 'package:flutter_whatsapp/models/product.dart';
import 'package:http/http.dart' as http;

class ProductService {


  static  Future<Map> getProducts(int page) async {
    // var url = Uri.parse('https://api.unsplash.com/photos/?client_id=N9pWvg3RGznTw7ae3qYYZRTbaFuP_4aGpa4WSClu8o0');

    // var url = Uri.parse('http://roocket.org/api/products?=$page');
    // final response = await http.get(url);
    //
    // List<Product> products=[];
    // var responseBody;
    // if (response.statusCode==200){
    //   responseBody = json.decode(response.body)['data'];
    //
    //   responseBody['data'].forEach((item){
    //   products.add(Product.fromJson(item));
    //
    //   });


      var url = Uri.parse('https://api.unsplash.com/photos/?client_id=N9pWvg3RGznTw7ae3qYYZRTbaFuP_4aGpa4WSClu8o0');
      final response = await http.get(url);

      List<Product> products=[];
      var responseBody;
      if (response.statusCode==200){
        responseBody = json.decode(response.body);

        responseBody.forEach((item){
          products.add(Product.fromJson(item));

        });


    }
    return{
      // "current_page": responseBody['current_page'],
      // "products":products

      "products":products
    };


  }


}
