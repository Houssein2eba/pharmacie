

import 'package:ecommerce/data/model/medication_model.dart';
import 'package:ecommerce/data/model/pharmacy_model.dart';

class Order {
  final int id;
  final String status;
  final String reference;
  final String? rejectReason;
  final double? totalAmount;
  final String? type;
  final DateTime createdAt;
  final DateTime updatedAt;
  final Pharmacy? pharmacy;
  final List<Medication> medications;

  Order({
    required this.id,
    required this.status,
    required this.reference,
    this.rejectReason,
    this.totalAmount,
    this.type,
    required this.createdAt,
    required this.updatedAt,
    this.pharmacy,
    required this.medications,
  });

  factory Order.fromJson(Map<String, dynamic> json) {
    return Order(
      id: json['id'],
      status: json['status'],
      reference: json['reference'],
      rejectReason: json['reject_reason'],
      totalAmount: (json['total_amount'] != null) ? json['total_amount'].toDouble() : null,
      type: json['type'],
      createdAt: DateTime.parse(json['created_at']),
      updatedAt: DateTime.parse(json['updated_at']),
      pharmacy: json['pharmacy'] != null ? Pharmacy.fromJsonBasic(json['pharmacy']) : null,
      medications: (json['medications'] as List<dynamic>?)
              ?.map((e) => Medication.fromJson(e))
              .toList() ??
          [],
    );
  }
}
