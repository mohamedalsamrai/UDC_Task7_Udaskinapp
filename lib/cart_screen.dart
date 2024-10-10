import 'package:flutter/material.dart';
import 'package:udaskinapp/checkOut.dart';
import 'package:udaskinapp/menu_tab_bar.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  bool selectAll = false;
  List<bool> selectedItems = [false, false, false, false]; // Simpan status checkbox tiap item

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => MenuTabBar()));
          },
        ),
        title: const Text(
          'Cart',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black87),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Checkbox(
                  value: selectAll,
                  onChanged: (bool? value) {
                    setState(() {
                      selectAll = value ?? false;
                      for (int i = 0; i < selectedItems.length; i++) {
                        selectedItems[i] = selectAll;
                      }
                    });
                  },
                ),
                const Text(
                  'Select All',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: selectedItems.length,
                itemBuilder: (context, index) {
                  return Card(
                    margin: const EdgeInsets.only(bottom: 10),
                    child: ListTile(
                      leading: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Checkbox(
                            value: selectedItems[index],
                            onChanged: (bool? value) {
                              setState(() {
                                selectedItems[index] = value ?? false;
                              });
                            },
                          ),
                          const SizedBox(width: 8), // Menambahkan jarak antara checkbox dan gambar
                          Image.asset(
                            'assets/home-emas.png', // Pastikan path gambar sesuai
                            width: 50,
                            height: 50,
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                      title: const Text('White Ginseng Purify\nMask'),
                      subtitle: const Text('\$120.00'),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: const Icon(Icons.remove),
                            onPressed: () {},
                          ),
                          const Text('01'),
                          IconButton(
                            icon: const Icon(Icons.add),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Select Item (4)', style: TextStyle(fontWeight: FontWeight.bold)),
                Text('Total: \$120.00', style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Checkout()));
            },
                child: Text('ChackOut', style: TextStyle(color: Colors.white)),
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
    );
  }
}
