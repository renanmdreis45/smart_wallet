import 'package:flutter_test/flutter_test.dart';
import 'package:smart_wallet/features/transaction/data/models/transaction_model.dart';
import 'package:smart_wallet/features/transaction/domain/entities/transaction.dart';

void main() {
  final tTransactionModel = TransactionModel(
    id: '1',
    amount: 100.0,
    date: DateTime.now(),
    description: 'Test Transaction',
  );
  test('should be a subclass of TransactionEntity', () async {
    expect(tTransactionModel, isA<TransactionEntity>());
  });

  group('fromJson', () {
    test('should return a valid model when the JSON is provided', () async {
      final Map<String, dynamic> json = {
        'id': '1',
        'amount': 100.0,
        'date': DateTime.now().toIso8601String(),
        'description': 'Test Transaction',
      };
      final model = TransactionModel.fromJson(json);
      expect(model, tTransactionModel);
    });
  });
}
