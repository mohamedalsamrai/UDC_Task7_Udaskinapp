import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:udaskinapp/address.dart';
import 'package:udaskinapp/change_profil.dart';
import 'package:udaskinapp/menu_tab_bar.dart';
import 'package:udaskinapp/myorder.dart';
import 'package:udaskinapp/payment.dart';
import 'package:udaskinapp/voucher.dart';
import 'package:udaskinapp/welcome.dart';

class ProfilScreen extends StatefulWidget {
  const ProfilScreen({super.key});

  @override
  State<ProfilScreen> createState() => _ProfilScreenState();
}

class _ProfilScreenState extends State<ProfilScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => MenuTabBar()));
          },
        ),
        title: const Text('Profile'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: EdgeInsets.all(16.0),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2024/02/18/09/00/ai-generated-8580795_640.jpg'),
                ),
                SizedBox(width: 16),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ChangeProfil()),
                    );
                  },
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Messy Wirdianti',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Silver Members',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // const Divider(),
          const SizedBox(height: 30),
          Expanded(
              child: ListView(
                children: [
                  ListTile(
                    leading: Icon(Icons.shopping_bag_outlined),
                    title: Text('My Order'),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Myorder()));
                    },
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.location_on_outlined),
                    title: Text('Shipping Addresses'),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => const AddressScreen()));
                    },
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.payment),
                    title: Text('Payment methodes'),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const PaymentScreen()));
                    },
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.card_giftcard_outlined),
                    title: Text('My Voucger'),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Voucher()));
                    },
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.settings),
                    title: Text('Setting'),
                    trailing: Icon(Icons.arrow_forward_ios,),
                  ),
                  Divider(),
                  ListTile(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => WelcomeScreen()));
                    },
                    title: Text('Logout',
                    style: TextStyle(color: Colors.red),
                    ),
                  ),
                  Divider(),
                  ListTile(
                    title: Text('Version 0.1',
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
