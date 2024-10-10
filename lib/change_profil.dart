import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:udaskinapp/profil_screen.dart';

class ChangeProfil extends StatefulWidget {
  const ChangeProfil({super.key});

  @override
  State<ChangeProfil> createState() => _ChangeProfilState();
}

class _ChangeProfilState extends State<ChangeProfil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        title: Text('Change Profile'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          ListTile(
            leading: const CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(
                  'https://cdn.pixabay.com/photo/2024/02/18/09/00/ai-generated-8580795_640.jpg'),
            ),
            trailing: GestureDetector(
              onTap: () {
              },
              child: const Text(
                'Change Photo',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 16,
                ),
              ),
            ),
          ),
          const Divider(),
          Expanded(
              child: ListView(
                children: const [
                  ListTile(
                    title: Text('Name', style: TextStyle(color: Colors.grey)),
                    trailing: Text('Messy Wirdianti', style: TextStyle(color: Colors.black87, fontSize: 16)),
                  ),
                  Divider(),
                  ListTile(
                    title: Text('Gender', style: TextStyle(color: Colors.grey)),
                    trailing: Text('Famale', style: TextStyle(color: Colors.black87, fontSize: 16)),
                  ),
                  Divider(),
                  ListTile(
                    title: Text('Date of irth', style: TextStyle(color: Colors.grey)),
                    trailing: Text('17/01/2003', style: TextStyle(color: Colors.black87, fontSize: 16)),
                  ),
                  Divider(),
                  ListTile(
                    title: Text('Phone Number', style: TextStyle(color: Colors.grey)),
                    trailing: Text('+62 895320290527', style: TextStyle(color: Colors.black87, fontSize: 16)),
                  ),
                  Divider(),
                  ListTile(
                    title: Text('Email', style: TextStyle(color: Colors.grey)),
                    trailing: Text('mesiwirdianti@gmail.com', style: TextStyle(color: Colors.black87, fontSize: 16)),
                  ),
                  Divider(),
                ],
              ),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
         child:  ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilScreen()));
          },
          style: ElevatedButton.styleFrom(
            minimumSize: const Size(double.infinity, 50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            backgroundColor: Colors.black87),
              child: const Text('Save',
              style: TextStyle(color: Colors.white),
              ),
          ),
          ),
        ],
      ),
    );
  }
}
