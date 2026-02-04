import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:smart_wallet/core/error/failure.dart';
import 'package:smart_wallet/features/transaction/domain/entities/transaction.dart';
import 'package:smart_wallet/features/transaction/domain/repositories/transaction_repository.dart';
import 'package:smart_wallet/features/transaction/domain/usecases/get_transactions.dart';

import 'get_transactions_test.mocks.dart';

@GenerateMocks([TransactionRepository])
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
    ).thenAnswer((_) async => Right(tTransactions));

    final result = await usecase();

    expect(result, Right<Failure, List<Transaction>>(tTransactions));

    verify(mockTransactionRepository.getTransactions());

    verifyNoMoreInteractions(mockTransactionRepository);
  });
}
