import 'package:flutter/material.dart';

import 'detail_produc.dart';
import 'filter_screen.dart';

class SearchList extends StatefulWidget {
  const SearchList({super.key});

  @override
  State<SearchList> createState() => _SearchListState();
}

class _SearchListState extends State<SearchList> {
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
      'image': 'assets/home-gold.png',
      'title': 'Herbal Clay Mask',
      'description': 'Purifying Mask',
      'price': '\$35.00',
    },
    {
      'image': 'assets/home-emas.png',
      'title': 'Herbal Clay Mask',
      'description': 'Purifying Mask',
      'price': '\$35.00',
    },
    {
      'image': 'assets/home-herbal.png',
      'title': 'Herbal Clay Mask',
      'description': 'Purifying Mask',
      'price': '\$35.00',
    },
    {
      'image': 'assets/home-gold1.png',
      'title': 'Herbal Clay Mask',
      'description': 'Purifying Mask',
      'price': '\$35.00',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black87,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Container(
          decoration: BoxDecoration(
              color: Colors.grey[200], borderRadius: BorderRadius.circular(20)),
          child: const TextField(
            decoration: InputDecoration(
              hintText: 'Cleanser',
              border: InputBorder.none,
              contentPadding: EdgeInsets.all(10),
              prefixIcon: Icon(Icons.search, color: Colors.grey),
            ),
          ),
        ),
        actions: [
          IconButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => FilterScreen()));
          }, icon: Icon(Icons.filter_list)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
                child: GridView.builder(
                    itemCount: products.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 20,
                      childAspectRatio: 0.7,
                    ),
                    itemBuilder: (context, index) {
                      final product = products[index];
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => DetailProduc()));
                        },
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                blurRadius: 5,
                                spreadRadius: 3,
                              )
                            ]
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
                              const SizedBox(height: 10),
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
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  const Icon(
                                    Icons.favorite_border,
                                    color: Colors.grey,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    }))
          ],
        ),
      ),
    );
  }
}
