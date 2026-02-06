import 'package:smart_wallet/features/transaction/domain/entities/transaction.dart';

class TransactionModel extends TransactionEntity {
  const TransactionModel({
    required super.id,
    required super.amount,
    required super.date,
    required super.description,
  });
}
