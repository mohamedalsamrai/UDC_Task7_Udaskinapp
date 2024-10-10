import 'package:flutter/material.dart';
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
  TabController? tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 5, vsync: this);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: tabController, children: const [
          HomeScreen(),
          CartScreen(),
          WishlistScreen(),
          ChatScreen(),
          ProfilScreen(),
      ]),
    bottomNavigationBar: BottomAppBar(
    child: TabBar(
    labelColor: Colors.black,
    unselectedLabelColor: Colors.grey,
    controller: tabController,
    tabs: const [
      Tab(
    text: 'Home',
    icon: Icon(Icons.home),
    ),
    Tab(
    text: 'Cart',
    icon: Icon(Icons.card_travel  ),
    ),
    Tab(
    text: 'WishList',
    icon: Icon(Icons.favorite_outline),
    ),
      Tab(
        text: 'Chat',
        icon: Icon(Icons.mark_unread_chat_alt_outlined),
      ),
    Tab(
    text: 'Profil',
    icon: Icon(Icons.person),
    ),
    ],
    ),
      ),
    );
  }
}
