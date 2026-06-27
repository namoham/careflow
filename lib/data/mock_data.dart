// lib/data/mock_data.dart

import '../models/client.dart';
import '../models/staff.dart';
import '../models/shift.dart';
import '../models/incident.dart';

final List<Client> mockClients = [
  Client(id: '1', name: 'James Miller', age: 34, roomNumber: 'A-101'),
  Client(id: '2', name: 'Sophie Taylor', age: 28, roomNumber: 'A-102'),
  Client(id: '3', name: 'Robert Davis', age: 45, roomNumber: 'B-201'),
  Client(id: '4', name: 'Lisa Anderson', age: 31, roomNumber: 'B-202'),
];

final List<Staff> mockStaff = [
  Staff(id: '1', name: 'Sarah Johnson', role: 'supervisor'),
  Staff(id: '2', name: 'Michael Chen', role: 'staff'),
  Staff(id: '3', name: 'Emma Williams', role: 'staff'),
];

final List<Shift> mockShifts = [
  Shift(id: '1', staffName: 'Michael Chen', date: '27 Jun', time: '07:00 - 15:00'),
  Shift(id: '2', staffName: 'Emma Williams', date: '27 Jun', time: '15:00 - 23:00'),
  Shift(id: '3', staffName: 'Michael Chen', date: '28 Jun', time: '07:00 - 15:00'),
];

final List<Incident> mockIncidents = [
  Incident(id: '1', clientName: 'James Miller', type: 'Fall', severity: 'medium'),
  Incident(id: '2', clientName: 'Robert Davis', type: 'Medication', severity: 'low'),
  Incident(id: '3', clientName: 'Sophie Taylor', type: 'Behavior', severity: 'high'),
];