import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:smart_wallet/features/transaction/domain/entities/transaction.dart';
import 'package:smart_wallet/features/transaction/domain/repositories/transaction_repository.dart';
import 'package:smart_wallet/features/transaction/domain/usecases/get_transactions.dart';

class MockTransactionRepository extends Mock implements TransactionRepository {}

void main() {
  late GetTransactions usecase;
  late MockTransactionRepository mockTransactionRepository;
  setUp(() {
    mockTransactionRepository = MockTransactionRepository();
    usecase = GetTransactions(mockTransactionRepository);
  });

  final tTransactions = <Transaction>[];

  test('should get transactions from the repository', () async {
    when(
      mockTransactionRepository.getTransactions(),
    ).thenAnswer((_) async => Right([]));

    final result = await usecase();

    expect(result, Right(tTransactions));

    verify(mockTransactionRepository.getTransactions());

    verifyNoMoreInteractions(mockTransactionRepository);
  });
}
