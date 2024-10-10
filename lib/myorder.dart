import 'package:flutter/material.dart';
import 'package:udaskinapp/detail_payment.dart';
import 'package:udaskinapp/profil_screen.dart';
import 'package:udaskinapp/rate_screen.dart';

import 'detail_order.dart';

class Myorder extends StatefulWidget {
  const Myorder({super.key});

  @override
  State<Myorder> createState() => _MyorderState();
}

class _MyorderState extends State<Myorder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: (){
            Navigator.pop(context);
            // Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilScreen()));
          },
        ),
        title: Text('Order',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Icon(Icons.check_box_outline_blank, size: 30),
                    SizedBox(height: 8),
                    Text('Confirm'),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.local_shipping, size: 30),
                    SizedBox(height: 8),
                    Text('Process'),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.delivery_dining, size: 30),
                    SizedBox(height: 8),
                    Text('Deliver'),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.check_circle, size: 30),
                    SizedBox(height: 8),
                    Text('Finish'),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: [
                  Card(
                    child: ListTile(
                      leading: Image.asset(
                        'assets/home-gold.png',
                        width: 50,
                      ),
                      title: const Text('White Ginseng Purify Mask'),
                      subtitle: const Text('\$120.00 (1x)'),
                      trailing: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const DetailOrder()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                        ),
                        child: const Text('Buy again', style: TextStyle(color: Colors.white)),
                      )

                    ),
                  ),
                  const SizedBox(height: 10),
                  Card(
                    child: ListTile(
                      leading: Image.asset(
                        'assets/home-white.png',
                        width: 50,
                      ),
                      title: const Text('White Ginseng Purify Mask'),
                      subtitle: const Text('\$120.00 (1x)'),
                      trailing: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const RateScreen()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                        ),
                        child: const Text('Rate', style: TextStyle(color: Colors.white),
                        ),
                      )

                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}