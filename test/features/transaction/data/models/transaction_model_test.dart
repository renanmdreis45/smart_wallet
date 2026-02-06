import 'package:flutter_test/flutter_test.dart';
import 'package:smart_wallet/features/transaction/domain/entities/transaction.dart';

void main() {
  final tTransactionModel = TransactionModel();
  test('should be a subclass of TransactionEntity', () async {
    expect(tTransactionModel, isA<TransactionEntity>());
  });
}
