import 'package:flutter/material.dart';
import '../mudules/product.dart';

class ProductDetailScreen extends StatelessWidget {
  final Product product;

  ProductDetailScreen({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(product.name)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(product.icon, size: 100),
            SizedBox(height: 10),
            Text(product.name, style: TextStyle(fontSize: 22)),
            Text("Rp ${product.price}", style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
