import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:udaskinapp/profil_screen.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  int selectedPaymentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      leading: IconButton(
        icon: Icon(Icons.arrow_back_ios),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilScreen()));
        },
      ),
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Payment',
              style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
      body:Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const Text('Payment availabe',
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black87, fontSize: 18),
            ),
            const SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 1,
                    blurRadius: 5,
                  ),
                ],
              ),
              child: ListTile(
                leading: Image.asset('assets/02.png',
                  width: 40,
                  height: 40,
                  fit: BoxFit.contain,
                ),
                title: const Text(
                  'paypal',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                trailing: Radio(
                  value: 0,
                  groupValue: selectedPaymentIndex,
                  onChanged: (int? value) {
                    setState(() {
                      selectedPaymentIndex = value!;
                    });
                  },
                ),
              ),
            ),
            const SizedBox(height:20),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 1,
                    blurRadius: 5,
                  ),
                ],
              ),
              child: ListTile(
                leading: Image.asset('assets/googlepay.png',
                  width: 40,
                  height: 40,
                  fit: BoxFit.contain,
                ),
                title: const Text(
                  'Googlepay',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                trailing: Radio(
                  value: 1,
                  groupValue: selectedPaymentIndex,
                  onChanged: (int? value) {
                    setState(() {
                      selectedPaymentIndex = value!;
                    });
                  },
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 1,
                    blurRadius: 5,
                  ),
                ],
              ),
              child: ListTile(
                leading: Image.asset('assets/danapay.jpg',
                  width: 40,
                  height: 40,
                  fit: BoxFit.contain,
                ),
                title: const Text(
                  'Danapay',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                trailing: Radio(
                  value: 1,
                  groupValue: selectedPaymentIndex,
                  onChanged: (int? value) {
                    setState(() {
                      selectedPaymentIndex = value!;
                    });
                  },
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 1,
                    blurRadius: 5,
                  ),
                ],
              ),
              child: ListTile(
                leading: Image.asset('assets/gopay.png',
                  width: 40,
                  height: 40,
                  fit: BoxFit.contain,
                ),
                title: const Text(
                  'Gopay',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                trailing: Radio(
                  value: 1,
                  groupValue: selectedPaymentIndex,
                  onChanged: (int? value) {
                    setState(() {
                      selectedPaymentIndex = value!;
                    });
                  },
                ),
              ),
            ),
            const SizedBox(height: 350),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  backgroundColor: Colors.black87,
                ),
                onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilScreen()));
            },
                child: const Text('Save',
                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                ))
          ],
          ),
        ),
    );
  }
}
