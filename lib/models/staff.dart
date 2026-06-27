// lib/models/staff.dart

class Staff {
  final String id;
  final String name;
  final String role; // "supervisor" or "staff"

  Staff({
    required this.id,
    required this.name,
    required this.role,
  });
}