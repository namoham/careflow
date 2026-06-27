// lib/screens/staff_screen.dart

import 'package:flutter/material.dart';
import '../data/mock_data.dart';

class StaffScreen extends StatefulWidget {
  const StaffScreen({super.key});

  @override
  State<StaffScreen> createState() => _StaffScreenState();
}

class _StaffScreenState extends State<StaffScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Staff'),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: mockStaff.length,
        itemBuilder: (context, index) {
          final staff = mockStaff[index];
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: staff.role == 'supervisor'
                    ? Colors.purple.shade100
                    : Colors.green.shade100,
                child: Icon(
                  staff.role == 'supervisor' ? Icons.star : Icons.person,
                  color: staff.role == 'supervisor'
                      ? Colors.purple
                      : Colors.green,
                  size: 20,
                ),
              ),
              title: Text(staff.name),
              subtitle: Text(staff.role.toUpperCase()),
              trailing: const Icon(Icons.chevron_right),
            ),
          );
        },
      ),
    );
  }
}