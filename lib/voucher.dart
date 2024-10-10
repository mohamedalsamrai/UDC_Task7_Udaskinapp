import 'package:flutter/material.dart';

class Voucher extends StatefulWidget {
  const Voucher({super.key});

  @override
  State<Voucher> createState() => _VoucherState();
}

class _VoucherState extends State<Voucher> {
  String selectedVoucher = '';

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
        title: const Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Voucher',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Spacer(),
            Text(
              'Reset',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.red),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'ABCDEFG123456',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    )),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Apply', style: TextStyle(color: Colors.white)),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black87,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      minimumSize: Size(80, 50)),
                )
              ],
            ),
            SizedBox(height: 30),
            Text(
              'Vouchers available',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(height: 10),
            Expanded(
                child: ListView(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.local_shipping, color: Colors.green),
                            SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Free Shipping',  style: TextStyle(fontSize: 18)),
                                Text(
                                  'Valid for 3 more days',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Radio<String>(
                          value: 'Free shipping - 3 day',
                          groupValue: selectedVoucher,
                          onChanged: (value) {
                            setState(() {
                              selectedVoucher = value!;
                            });
                          },
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.local_shipping, color: Colors.green),
                            SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Free Shipping', style: TextStyle(fontSize: 18)),
                                Text(
                                  'Valid for 7 more days',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Radio<String>(
                          value: 'Free shipping - 7 day',
                          groupValue: selectedVoucher,
                          onChanged: (value) {
                            setState(() {
                              selectedVoucher = value!;
                            });
                          },
                        ),
                      ],
                    ),
                    const SizedBox(height: 450),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Save',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(double.infinity, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        backgroundColor: Colors.black87,
                      ),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
