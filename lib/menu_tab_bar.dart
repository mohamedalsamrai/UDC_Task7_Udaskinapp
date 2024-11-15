import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:udaskinapp/home.dart';
import 'package:udaskinapp/profil_screen.dart';
import 'package:udaskinapp/wishlist_screen.dart';

import 'cart_screen.dart';
import 'chat_screen.dart';

class MenuTabBar extends StatefulWidget {
  const MenuTabBar({super.key});

  @override
  State<MenuTabBar> createState() => _MenuTabBarState();
}

class _MenuTabBarState extends State<MenuTabBar>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 5, vsync: this);

    tabController.addListener(() {
      if (tabController.indexIsChanging) {
        setState(() {
          selectedIndex = tabController.index;
        });
      }
    });
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: tabController,
        children: const [
          HomeScreen(),
          CartScreen(),
          WishlistScreen(),
          ChatScreen(),
          ProfilScreen(),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (value) {
          setState(() {
            selectedIndex = value;
            tabController.index = value;
          });
        },
        selectedIndex: selectedIndex,
        height: 55,
        indicatorColor: const Color(0xffffffff),
        backgroundColor: const Color(0xffffffff),
        destinations: const [
          NavigationDestination(icon: Icon(Ionicons.home_sharp), label: 'Home'),
          NavigationDestination(icon: Icon(Ionicons.basket), label: 'Cart'),
          NavigationDestination(icon: Icon(Ionicons.heart), label: 'WishList'),
          NavigationDestination(icon: Icon(Ionicons.mail), label: 'Chat'),
          NavigationDestination(icon: Icon(Ionicons.person), label: 'Profil'),
        ],
      ),
    );
  }
}
