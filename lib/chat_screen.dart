import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:udaskinapp/detail_chat.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, size: 30, color: Colors.black87),
            onPressed: () {
            },
          ),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(height: 25),
          ListTile(
            leading: const CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2024/02/18/09/00/ai-generated-8580795_640.jpg'),
            ),
            title: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const DetailChat()),
                );
              },
    child: const Text(
              'Messy Wirdianti',
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black87, fontSize: 18),
            ),
            ),
            subtitle: const Text(
              'Ok, Please order it brother',
              style: TextStyle(color: Colors.grey, fontSize: 15),
            ),
            trailing: GestureDetector(
              child: const Text(
                '2024-10-02',
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
            ),
          ),
          Divider(),
          ListTile(
            leading: const CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2024/02/18/09/00/ai-generated-8580795_640.jpg'),
            ),
            title: const Text(
              'Dinda Gatya Rabbani',
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black87, fontSize: 18),
            ),
            subtitle: const Text(
              'Ok, Please order it brother',
              style: TextStyle(color: Colors.grey, fontSize: 15),
            ),
            trailing: GestureDetector(
              child: const Text(
                '2024-10-02',
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
            ),
          ),
          Divider(),
        ],
      ),
    );
  }
}
