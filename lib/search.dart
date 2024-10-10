import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:udaskinapp/address.dart';
import 'package:udaskinapp/home.dart';
import 'package:udaskinapp/menu_tab_bar.dart';
import 'package:udaskinapp/myorder.dart';
import 'package:udaskinapp/search_list.dart';

class SearchSreen extends StatefulWidget {
  const SearchSreen({super.key});

  @override
  State<SearchSreen> createState() => _SearchSreenState();
}

class _SearchSreenState extends State<SearchSreen> {
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
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => MenuTabBar()));
          },
        ),
        title: Container(
          decoration: BoxDecoration(
              color: Colors.grey[200], borderRadius: BorderRadius.circular(20)),
          child: const TextField(
            decoration: InputDecoration(
              hintText: 'Find your favorite product...',
              border: InputBorder.none,
              contentPadding: EdgeInsets.all(10),
              prefixIcon: Icon(Icons.search, color: Colors.grey),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        blurRadius: 5,
                        spreadRadius: 2,
                      ),
                    ],
                    border: Border.all(color: Colors.grey[300]!),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ListTile(
                        // leading: Icon(Icons.shopping_bag_outlined),
                        title: Text('My Order'),
                        trailing: Icon(Icons.arrow_forward_ios),
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Myorder()));
                        },
                      ),
                      Divider(),
                      ListTile(
                        // leading: Icon(Icons.location_on_outlined),
                        title: Text('Shipping Addresses'),
                        trailing: Icon(Icons.arrow_forward_ios),
                        onTap: () {
                          Navigator.push(context,
                          MaterialPageRoute(builder: (_) => const AddressScreen()));
                        },
                      ),
                      Divider(),
                      const Center(
                          child: ListTile(
                            title: Center(
                              child: Text('See All'),
                            ),
                          ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Popular Search',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              ListTile(
                leading: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: const EdgeInsets.all(0.1),
                  child: Image.asset(
                    'assets/home-white.png',
                    height: 100,
                  ),
                ),
                title: const Text('White Ginsingeng Purify Mask'),
                subtitle: const Text('1000 searches'),
              ),
              const SizedBox(height: 10),
              ListTile(
                leading: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: const EdgeInsets.all(0.1),
                  child: Image.asset(
                    'assets/home-ginseng.png',
                    height: 120,
                  ),
                ),
                title: const Text('White Ginsingeng Purify Mask'),
                subtitle: const Text('500 searches'),
              ),
              const SizedBox(height: 10),
              ListTile(
                leading: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: const EdgeInsets.all(0.1),
                  child: Image.asset(
                    'assets/home-emas.png',
                    height: 120,
                  ),
                ),
                title: const Text('White Ginsingeng Purify Mask'),
                subtitle: const Text('300 searches'),
              ),
              const SizedBox(height: 20),
              const Text(
                'Popular Category',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 15),
              ListTile(
                leading: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: const EdgeInsets.all(0.1),
                  child: Image.asset(
                    'assets/home-white.png',
                    height: 50,
                  ),
                ),
                title: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const SearchList()));
                  },
                  child: const Text('Cleansear', style: TextStyle(fontWeight: FontWeight.bold)),
                )
              ),
              const SizedBox(height: 15),
              ListTile(
                leading: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: const EdgeInsets.all(0.1),
                  child: Image.asset(
                    'assets/home-ginseng.png',
                    height: 100,
                  ),
                ),
                title: const Text('Toner',  style: TextStyle(fontWeight: FontWeight.bold)),
              ),
            ],
          ),
        
        ),
      ),
    );
  }
}
