// lib/screens/dashboard_screen.dart

import 'package:flutter/material.dart';
import '../data/mock_data.dart';
import 'clients_screen.dart';
import 'staff_screen.dart';
import 'shifts_screen.dart';
import 'incidents_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CareFlow'),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Welcome
            const Text(
              'Welcome back!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            const Text(
              'Here is your overview for today',
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            const SizedBox(height: 24),

            // Stats Cards
            Row(
              children: [
                _buildStatCard(
                  icon: Icons.people,
                  title: 'Clients',
                  count: mockClients.length.toString(),
                  color: Colors.blue,
                  onTap: () => _goTo(const ClientsScreen()),
                ),
                const SizedBox(width: 12),
                _buildStatCard(
                  icon: Icons.person,
                  title: 'Staff',
                  count: mockStaff.length.toString(),
                  color: Colors.green,
                  onTap: () => _goTo(const StaffScreen()),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                _buildStatCard(
                  icon: Icons.calendar_today,
                  title: 'Shifts',
                  count: mockShifts.length.toString(),
                  color: Colors.orange,
                  onTap: () => _goTo(const ShiftsScreen()),
                ),
                const SizedBox(width: 12),
                _buildStatCard(
                  icon: Icons.warning,
                  title: 'Incidents',
                  count: mockIncidents.length.toString(),
                  color: Colors.red,
                  onTap: () => _goTo(const IncidentsScreen()),
                ),
              ],
            ),

            const SizedBox(height: 24),

            // Today's Shifts
            const Text(
              "Today's Shifts",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            Expanded(
              child: ListView.builder(
                itemCount: mockShifts.length,
                itemBuilder: (context, index) {
                  final shift = mockShifts[index];
                  return Card(
                    child: ListTile(
                      leading: const Icon(Icons.access_time, color: Colors.teal),
                      title: Text(shift.staffName),
                      subtitle: Text('${shift.date} • ${shift.time}'),
                      trailing: const Icon(Icons.chevron_right),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatCard({
    required IconData icon,
    required String title,
    required String count,
    required Color color,
    required VoidCallback onTap,
  }) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: color.withOpacity(0.1),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: color.withOpacity(0.3)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(icon, color: color, size: 28),
              const SizedBox(height: 8),
              Text(
                count,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: color,
                ),
              ),
              Text(
                title,
                style: TextStyle(
                  fontSize: 14,
                  color: color.withOpacity(0.8),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _goTo(Widget screen) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => screen),
    );
  }
}