// lib/main.dart

import 'package:flutter/material.dart';
import 'screens/dashboard_screen.dart';

void main() {
  runApp(const CareFlowApp());
}

class CareFlowApp extends StatelessWidget {
  const CareFlowApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CareFlow',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      home: const DashboardScreen(),
    );
  }
}