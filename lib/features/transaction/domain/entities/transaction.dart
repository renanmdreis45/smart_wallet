import 'package:equatable/equatable.dart';

class TransactionEntity extends Equatable {
  const TransactionEntity({
    required this.id,
    required this.amount,
    required this.date,
    required this.description,
  });

  final String id;
  final double amount;
  final DateTime date;
  final String description;

  @override
  List<Object?> get props => [id, amount, date, description];
}
