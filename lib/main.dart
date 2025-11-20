import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(MyShopMini());
}

class MyShopMini extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyShop Mini',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
