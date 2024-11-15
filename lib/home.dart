import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:udaskinapp/search.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // List of products with their details
  final List<Map<String, String>> products = [
    {
      'image': 'assets/home-white.png',
      'title': 'White Ginseng Mask',
      'description': 'Radiance Refining Mask',
      'price': '\$29.00',
    },
    {
      'image': 'assets/home-ginseng.png',
      'title': 'Herbal Clay Mask',
      'description': 'Purifying Mask',
      'price': '\$35.00',
    },
    {
      'image': 'assets/home-emas.png',
      'title': 'Herbal Clay Purifying Mask',
      'description': 'Deep Cleansing Mask',
      'price': '\$40.00',
    },
    {
      'image': 'assets/home-gold.png',
      'title': 'White Pearl Mask',
      'description': 'Brightening Mask',
      'price': '\$25.00',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Row for Text and Search Icon
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'UCARE',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    color: Colors.black87,
                    fontSize: 40,
                  ),
                ),
                IconButton(
                  icon:
                      const Icon(Icons.search, size: 30, color: Colors.black87),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SearchSreen()));
                  },
                ),
              ],
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey[300],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Herbal Clay\nPurifying Mask',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87),
                      ),
                      SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: null,
                        child: Text('Shape Now',
                            style: TextStyle(color: Colors.white)),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.black),
                        ),
                      ),
                    ],
                  ),
                  Transform.rotate(
                    angle: -0.5,
                    child: Image.asset(
                      'assets/home-herbal.png',
                      width: 150,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('All', style: TextStyle(fontWeight: FontWeight.bold)),
                Text('Cleaners'),
                Text('Toner'),
                Text('Essence'),
                Text('Moisturizer'),
              ],
            ),
            const SizedBox(height: 20),
            // Grid for products
            Expanded(
              child: GridView.builder(
                itemCount: products.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  childAspectRatio: 0.7,
                ),
                itemBuilder: (context, index) {
                  final product = products[index];
                  return Container(
                    margin: EdgeInsets.all(6),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          blurRadius: 5,
                          spreadRadius: 3,
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          product['image']!,
                          height: 120,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(height: 10),
                        Text(
                          product['title']!,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          product['description']!,
                          style: TextStyle(color: Colors.grey),
                        ),
                        const Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              product['price']!,
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const Icon(
                              Icons.favorite_border,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
