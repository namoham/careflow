// lib/models/incident.dart

class Incident {
  final String id;
  final String clientName;
  final String type;
  final String severity; // "low", "medium", "high"

  Incident({
    required this.id,
    required this.clientName,
    required this.type,
    required this.severity,
  });
}