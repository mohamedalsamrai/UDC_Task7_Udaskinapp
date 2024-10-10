import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:udaskinapp/status_order.dart';

class DetailPayment extends StatefulWidget {
  const DetailPayment({super.key});

  @override
  State<DetailPayment> createState() => _DetailPaymentState();
}

class _DetailPaymentState extends State<DetailPayment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Payment',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ListTile(
              title: Text('payment deadline',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                      fontWeight: FontWeight.bold)),
              trailing: Text('24:00:00',
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 16,
                      fontWeight: FontWeight.bold)),
            ),
            Divider(),
            SizedBox(height: 20),
            ListTile(
              title: const Text('Bank Mandiri',
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 16)),
              trailing: Image.asset('assets/bank-mandiri.png', height: 100),
            ),
            const ListTile(
              title: Text('Account number',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey)),
              subtitle: const Text('0837384098765423', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 18)),
              trailing: Text('Salin', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            ),
            const ListTile(
              title: Text('Total Payment',style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.grey)),
              trailing: Text('\$520.00', style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold, fontSize: 16)),
            ),
            const SizedBox(height: 350),
            ElevatedButton(onPressed: (){},
                child: Text('Buy again', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                backgroundColor: Colors.black87,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => StatusOrder()));
            },
              child: Text('Check status', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold)),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                backgroundColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
