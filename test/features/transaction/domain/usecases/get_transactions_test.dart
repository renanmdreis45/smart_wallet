import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:smart_wallet/features/transaction/domain/repositories/transaction_repository.dart';
import 'package:smart_wallet/features/transaction/domain/usecases/get_transactions.dart';

class MockTransactionRepository extends Mock implements TransactionRepository {}

void main() {
  GetTransactions usecase;
  MockTransactionRepository mockTransactionRepository;
  setUp(() {
    mockTransactionRepository = MockTransactionRepository();
    usecase = GetTransactions(mockTransactionRepository);
  });
}
