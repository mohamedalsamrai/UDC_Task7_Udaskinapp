import 'package:flutter/material.dart';
import 'package:udaskinapp/profil_screen.dart';

class AddressScreen extends StatefulWidget {
  const AddressScreen({super.key});

  @override
  State<AddressScreen> createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {
  int selectedAddressIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
                // MaterialPageRoute(builder: (context) => ProfilScreen()));
          },
        ),
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Shipping',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black87,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const Text(
              'Address available',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(height: 20),
            _buildAddressCard(0, 'Office', 'South Tangerang ciry, Banten 15414\n0822-1376-1973'),
            const SizedBox(height: 10),
            _buildAddressCard(0, 'Home', 'South Tangerang ciry, Banten 15414\n0822-1376-1973'),
            const Spacer(),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  backgroundColor: Colors.black87,
                ),
                onPressed: (){},
                child: const Text('Save', style: TextStyle(fontSize: 16, color: Colors.white)),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildAddressCard(int index, String title, String address) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        leading: Radio(
          value: index,
          groupValue: selectedAddressIndex,
          onChanged: (int? value) {
            setState(() {
              selectedAddressIndex = value!;
            });
          },
        ),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        subtitle: Text(address),
        trailing: const Icon(Icons.edit, color: Colors.black87),
      ),
    );
  }
}


