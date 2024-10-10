import 'package:flutter/material.dart';

class DetailProduc extends StatefulWidget {
  const DetailProduc({super.key});

  @override
  State<DetailProduc> createState() => _DetailProducState();
}

class _DetailProducState extends State<DetailProduc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black87),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Cleaners', style: TextStyle(color: Colors.black87)),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_bag_outlined, color: Colors.black87),
            onPressed: () {},
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              height: 250,
              child: Image.asset('assets/home-white.png', fit: BoxFit.contain),
            ),
            SizedBox(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('\$29.00',
                    style:
                        TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                Icon(Icons.favorite_border, color: Colors.red),
              ],
            ),
            // Product Name
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'White Ginseng Mask',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            SizedBox(height: 5),
            // Rating Row
            const Row(
              children: [
                // Star icons
                Icon(Icons.star, color: Colors.amber),
                Icon(Icons.star, color: Colors.amber),
                Icon(Icons.star, color: Colors.amber),
                Icon(Icons.star, color: Colors.amber),
                Icon(Icons.star, color: Colors.amber),
                SizedBox(width: 5), // Spacing between stars and rating
                Text('5.0', style: TextStyle(fontSize: 16)),
              ],
            ),
            SizedBox(height: 10),
            const Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start, // Align text to the start
                children: [
                  Text(
                    'Masks for facial pore care that help\nclean clogged dirt in the pores, and control oil\nlevels on the face. Helps clear proses clogging...',
                    style: TextStyle(color: Colors.black87,fontSize: 16),
                  ),
                  SizedBox(height: 5), // Optional spacing between the two texts
                  Text('Read More', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                ],
              ),
            ),
            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Size', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                SizedBox(height: 10),
                OutlinedButton(
                  onPressed: () {},
                  child: Text('100 ml'),
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    minimumSize: Size(80, 40),
                  ),
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: Text('150 ml'),
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    minimumSize: Size(80, 40),
                  ),
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: Text('200 ml'),
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    minimumSize: Size(80, 40),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/user.png'),
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Abdor Khaleed', style: TextStyle(fontWeight: FontWeight.bold)),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.orange, size: 16),
                      Icon(Icons.star, color: Colors.orange, size: 16),
                      Icon(Icons.star, color: Colors.orange, size: 16),
                      Icon(Icons.star, color: Colors.orange, size: 16),
                      Icon(Icons.star, color: Colors.orange, size: 16),
                      SizedBox(width: 5),
                      Text('5.0', style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                ],
              ),
              subtitle: Text(
                'The product is very good, fits on my skin and the admin...',
                style: TextStyle(color: Colors.grey),
              ),
              trailing: Text('SEE ALL', style: TextStyle(fontWeight: FontWeight.bold)),
            ),

            Spacer(),
            ElevatedButton(
              onPressed: () {},
              child: Text('Add to Cart', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white)),
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
