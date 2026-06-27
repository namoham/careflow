// lib/screens/clients_screen.dart

import 'package:flutter/material.dart';
import '../data/mock_data.dart';

class ClientsScreen extends StatefulWidget {
  const ClientsScreen({super.key});

  @override
  State<ClientsScreen> createState() => _ClientsScreenState();
}

class _ClientsScreenState extends State<ClientsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Clients'),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: mockClients.length,
        itemBuilder: (context, index) {
          final client = mockClients[index];
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blue.shade100,
                child: Text(
                  client.name[0],
                  style: const TextStyle(color: Colors.blue),
                ),
              ),
              title: Text(client.name),
              subtitle: Text('Room ${client.roomNumber} • Age ${client.age}'),
              trailing: const Icon(Icons.chevron_right),
            ),
          );
        },
      ),
    );
  }
}