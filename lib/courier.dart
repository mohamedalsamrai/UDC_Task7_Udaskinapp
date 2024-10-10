import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:udaskinapp/checkOut.dart';

class Courier extends StatefulWidget {
  const Courier({super.key});

  @override
  State<Courier> createState() => _CourierState();
}

class _CourierState extends State<Courier> {
  int selectedCourierIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Checkout()));
          },
        ),
        title: const Text('Courier',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Courier Available', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
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
                leading: Image.asset('assets/pos.png',
                width: 40,
                  height: 40,
                  fit: BoxFit.contain,
                ),
                title: Text(
                  'Pos Indonesia',
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black87)),
                subtitle: Text('REG - \$50.00 (3 working days'),
                  trailing: Radio(
                    value: 0,
                    groupValue: selectedCourierIndex,
                    onChanged: ((int? value){
                      setState(() {
                        selectedCourierIndex = value!;
                      });
                    }),
                  ),
              ),
            ),
            const SizedBox(height: 10),
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
                leading: Image.asset('assets/JNT.png',
                  width: 40,
                  height: 40,
                  fit: BoxFit.contain,
                ),
                title: Text(
                    'JNT Express',
                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black87)),
                subtitle: Text('REG - \$50.00 (3 working days'),
                trailing: Radio(
                  value: 0,
                  groupValue: selectedCourierIndex,
                  onChanged: ((int? value){
                    setState(() {
                      selectedCourierIndex = value!;
                    });
                  }),
                ),
              ),
            ),
            const SizedBox(height: 10),
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
                leading: Image.asset('assets/JNE.png',
                  width: 40,
                  height: 40,
                  fit: BoxFit.contain,
                ),
                title: Text(
                    'JNE Express',
                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black87)),
                subtitle: Text('REG - \$50.00 (3 working days'),
                trailing: Radio(
                  value: 0,
                  groupValue: selectedCourierIndex,
                  onChanged: ((int? value){
                    setState(() {
                      selectedCourierIndex = value!;
                    });
                  }),
                ),
              ),
            ),
            const SizedBox(height: 10),
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
                leading: Image.asset('assets/sicepat.png',
                  width: 40,
                  height: 40,
                  fit: BoxFit.contain,
                ),
                title: Text(
                    'Sicepat',
                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black87)),
                subtitle: Text('REG - \$50.00 (3 working days'),
                trailing: Radio(
                  value: 0,
                  groupValue: selectedCourierIndex,
                  onChanged: ((int? value){
                    setState(() {
                      selectedCourierIndex = value!;
                    });
                  }),
                ),
              ),
            ),
            const SizedBox(height: 330),
            ElevatedButton(onPressed: (){},
                child: Text('Save', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(double.infinity, 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              backgroundColor: Colors.black87,
            ),
            )
          ],
        ),
      ),
    );
  }
}
