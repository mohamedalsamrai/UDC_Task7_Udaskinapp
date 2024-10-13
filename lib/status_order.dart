import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:udaskinapp/home.dart';
import 'package:udaskinapp/menu_tab_bar.dart';

class StatusOrder extends StatefulWidget {
  const StatusOrder({super.key});

  @override
  State<StatusOrder> createState() => _StatusOrderState();
}

class _StatusOrderState extends State<StatusOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => MenuTabBar()));
          },
        ),
        title: const Text(
          'Payment Confirmation',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logo-sukses.png',
              width: 300,
              height: 300,
            ),
            const ListTile(
              title: Text(
                'Payment Successfull',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                    fontSize: 18),
                textAlign: TextAlign.center,
              ),
              subtitle: Text(
                'Your payment was successful\nplease see the of your order',
                style: TextStyle(color: Colors.grey, fontSize: 15),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
