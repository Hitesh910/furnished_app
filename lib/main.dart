import 'package:flutter/material.dart';
import 'package:furnished_app/screen/car_screen.dart';
import 'package:furnished_app/screen/home_screen.dart';
import 'package:furnished_app/screen/product_screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
      routes:{
      '/':(context) => HomeScreen(),
        'product':(context) => ProductScreen(),
        'cart':(context) => CartScreen()
      }
    ,
    ),
  );
}