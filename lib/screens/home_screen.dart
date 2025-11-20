import 'package:flutter/material.dart';
import '../mudules//category.dart';
import 'product_list_screen.dart';

class HomeScreen extends StatelessWidget {
  final List<Category> categories = [
    Category(name: "Makanan", icon: Icons.fastfood),
    Category(name: "Minuman", icon: Icons.local_drink),
    Category(name: "Elektronik", icon: Icons.electrical_services),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("MyShop Mini")),
      body: Column(
        children: [
          SizedBox(height: 20),
          Text("Kategori", style: TextStyle(fontSize: 20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: categories.map((category) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) =>
                          ProductListScreen(selectedCategory: category.name),
                    ),
                  );
                },
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      children: [
                        Icon(category.icon, size: 40),
                        Text(category.name),
                      ],
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
