import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:udaskinapp/address.dart';
import 'package:udaskinapp/cart_screen.dart';
import 'package:udaskinapp/payment.dart';

import 'courier.dart';
import 'detail_payment.dart';

class Checkout extends StatefulWidget {
  const Checkout({super.key});

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => CartScreen()));
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: const Text('Checkout',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Shipping to', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              const SizedBox(height: 10),
              Card(
                child: ListTile(
                  title: Text('Office'),
                  subtitle: Text('South Tangerang city, Banten 15414\nn0822-1376-1973'),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => AddressScreen()));
                  }
                ),
              ),
              const SizedBox(height: 15),
              const Text('Payment Method', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              Card(
                child: ListTile(
                  leading: Image.asset('assets/02.png', width: 30),
                  title: Text('Paypal'),
                  trailing: Icon(Icons.arrow_forward_ios),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => PaymentScreen()));
                    }
                ),
              ),
              const SizedBox(height: 15),
              const Text('Courier', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              Card(
                child: ListTile(
                  leading: Image.asset('assets/pos.png', width: 30),
                  title: Text('Pos Indonesia'),
                  subtitle: Text(
                    'REG - \$50.00 (2 working days)', style: TextStyle(color: Colors.grey),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Courier()));
                  },
                ),
              ),
              const SizedBox(height: 15),
              const Text('Shopping list', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              Card(
                child: ListTile(
                  leading: Image.asset('assets/home-emas.png', width: 60),
                  title: Text('White Ginseng Purify Mask'),
                  subtitle: Text(
                    '\$120.00'
                  ),
                  trailing: Text('X1')
                ),
        
              ),
              Card(
                child: ListTile(
                    leading: Image.asset('assets/home-gold.png', width: 60),
                    title: Text('White Ginseng Purify Mask'),
                    subtitle: Text(
                        '\$120.00'
                    ),
                    trailing: Text('X1')
                ),
        
              ),
              Card(
                child: ListTile(
                    leading: Image.asset('assets/home-white.png', width: 60),
                    title: Text('White Ginseng Purify Mask'),
                    subtitle: Text(
                        '\$120.00'
                    ),
                    trailing: Text('X1')
                ),
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Shipping fee', style: TextStyle(color: Colors.grey)),
                  Text('\$30.00', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey)),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Sub total', style: TextStyle(color: Colors.grey)),
                  Text('\$120.00', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey)),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Total', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold)),
                  Text('\$520.00', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black87)),
                ],
              ),
              SizedBox(height: 20),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPayment()));
              },
                  child: Text('Payment', style: TextStyle(color: Colors.white)),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                backgroundColor: Colors.black87,
              ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
