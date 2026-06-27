// lib/screens/incidents_screen.dart

import 'package:flutter/material.dart';
import '../data/mock_data.dart';

class IncidentsScreen extends StatefulWidget {
  const IncidentsScreen({super.key});

  @override
  State<IncidentsScreen> createState() => _IncidentsScreenState();
}

class _IncidentsScreenState extends State<IncidentsScreen> {
  Color _getSeverityColor(String severity) {
    switch (severity) {
      case 'low':
        return Colors.green;
      case 'medium':
        return Colors.orange;
      case 'high':
        return Colors.red;
      default:
        return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Incidents'),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: mockIncidents.length,
        itemBuilder: (context, index) {
          final incident = mockIncidents[index];
          return Card(
            child: ListTile(
              leading: Icon(
                Icons.warning,
                color: _getSeverityColor(incident.severity),
              ),
              title: Text(incident.type),
              subtitle: Text('Client: ${incident.clientName}'),
              trailing: Chip(
                label: Text(incident.severity.toUpperCase()),
                backgroundColor: _getSeverityColor(incident.severity).withOpacity(0.1),
                labelStyle: TextStyle(
                  color: _getSeverityColor(incident.severity),
                  fontSize: 12,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}