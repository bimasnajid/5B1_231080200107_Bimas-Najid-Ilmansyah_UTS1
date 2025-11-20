import 'package:flutter/material.dart';
import '../mudules/product.dart';
import 'product_detail_screen.dart';

class ProductListScreen extends StatelessWidget {
  final String selectedCategory;

  ProductListScreen({required this.selectedCategory});

  final List<Product> products = [
    Product(
      name: "Burger",
      icon: Icons.fastfood,
      price: 25000,
      category: "Makanan",
    ),
    Product(
      name: "Teh Botol",
      icon: Icons.local_drink,
      price: 8000,
      category: "Minuman",
    ),
    Product(
      name: "Headset",
      icon: Icons.headphones,
      price: 120000,
      category: "Elektronik",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final filtered = products
        .where((item) => item.category == selectedCategory)
        .toList();

    return Scaffold(
      appBar: AppBar(title: Text(selectedCategory)),
      body: Column(
        children: [
          SizedBox(height: 10),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              children: filtered.map((product) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => ProductDetailScreen(product: product),
                      ),
                    );
                  },
                  child: Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(product.icon, size: 40),
                        Text(product.name),
                        Text("Rp ${product.price}"),
                      ],
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
