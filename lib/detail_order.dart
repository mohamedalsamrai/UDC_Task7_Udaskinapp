import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:udaskinapp/myorder.dart';

class DetailOrder extends StatefulWidget {
  const DetailOrder({super.key});

  @override
  State<DetailOrder> createState() => _DetailOrderState();
}

class _DetailOrderState extends State<DetailOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Myorder()));
          },
        ),
        title: const Text(
          'Detail Order',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              const ListTile(
                title: Text(
                  'Order Status',
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
                trailing: Text('Success',
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
              ),
              const ListTile(
                title: Text('Order ID', style: TextStyle(color: Colors.grey)),
                trailing: Text('#000012345',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.grey)),
              ),
              const ListTile(
                title: Text('Order Date', style: TextStyle(color: Colors.grey)),
                trailing: Text('2020-03-10',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.grey)),
              ),
              const Divider(),
              const ListTile(
                title: Text('Kaleeb Store',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              ),
              ListTile(
                leading: Image.asset('assets/home-white.png', width: 70),
                title: Text('White Ginsingeng Purify\nMask'),
                subtitle:
                    Text('\$120.00 (1x)', style: TextStyle(color: Colors.grey)),
              ),
              Divider(),
              const ListTile(
                title: Text('Shipping address',
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              const ListTile(
                title: Text('Kaleb Rahmeen',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                subtitle: Text(
                    'Soutn Tanggerang city, Banten 15414\n0822-1324-0987',
                    style: TextStyle(color: Colors.grey)),
              ),
              Divider(),
              const ListTile(
                title: Text('Shipping information',
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              const ListTile(
                title: Text('Pos Indonesia - PSIDN123456',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                subtitle: Text('2021-03-09 17.00',
                    style: TextStyle(color: Colors.grey)),
              ),
              Divider(),
              const ListTile(
                title: Text('Payment information',
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              const ListTile(
                title: Text('Payment Method',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                trailing: Text('Paypal', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              ),
              const ListTile(
                title: Text('Shipping free',
                    style: TextStyle(color: Colors.grey, fontSize: 16)),
                trailing: Text('\$30.00', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.grey)),
              ),
              const ListTile(
                title: Text('Sub total',
                    style: TextStyle(color: Colors.grey, fontSize: 16)),
                trailing: Text('\$120.00', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.grey)),
              ),
              const ListTile(
                title: Text('Total',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                trailing: Text('\$520.00', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              ),
              SizedBox(height: 20),
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
            ],
          ),
        ),
      ),
    );
  }
}
