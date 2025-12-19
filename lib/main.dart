import 'package:flutter/material.dart';

void main() {
  runApp(const GlobalBrandsApp());
}

class GlobalBrandsApp extends StatelessWidget {
  const GlobalBrandsApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Global Brands',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.black,
      ),
      home: const ProductListScreen(),
    );
  }
}

class ProductListScreen extends StatelessWidget {
  const ProductListScreen({super.key});

  final List<Map<String, dynamic>> products = const [
    {
      'name': 'Tommy Hilfiger T-Shirt',
      'price': 15.00,
    },
    {
      'name': 'Palm Angeles T-Shirt',
      'price': 15.00,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Global Brands'),
        centerTitle: true,
      ),
        body:ListView.builder(itemCount: products.length, itemBuilder: (context, index) {
          final product= products[index];

          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ListTile(
              title: Text(
                product['name'],
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              trailing: Text(
                '\$${product['price']}',
                style: const TextStyle(fontSize: 16)
              ),
            ),
          );
        },
        ),
    );
    throw UnimplementedError();
  }

}