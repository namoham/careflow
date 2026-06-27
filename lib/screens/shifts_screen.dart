// lib/screens/shifts_screen.dart

import 'package:flutter/material.dart';
import '../data/mock_data.dart';

class ShiftsScreen extends StatefulWidget {
  const ShiftsScreen({super.key});

  @override
  State<ShiftsScreen> createState() => _ShiftsScreenState();
}

class _ShiftsScreenState extends State<ShiftsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shifts'),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: mockShifts.length,
        itemBuilder: (context, index) {
          final shift = mockShifts[index];
          return Card(
            child: ListTile(
              leading: const Icon(Icons.access_time, color: Colors.orange),
              title: Text(shift.staffName),
              subtitle: Text('${shift.date} • ${shift.time}'),
              trailing: Chip(
                label: const Text('Scheduled'),
                backgroundColor: Colors.green.shade100,
                labelStyle: const TextStyle(color: Colors.green, fontSize: 12),
              ),
            ),
          );
        },
      ),
    );
  }
}