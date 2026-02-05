import 'package:dartz/dartz.dart';
import 'package:smart_wallet/core/error/failure.dart';
import 'package:smart_wallet/core/usescases/usecase.dart';
import 'package:smart_wallet/features/transaction/domain/entities/transaction.dart';
import 'package:smart_wallet/features/transaction/domain/repositories/transaction_repository.dart';

class GetTransactions implements NoParamsUseCase<List<Transaction>> {
  final TransactionRepository repository;

  GetTransactions(this.repository);

  @override
  Future<Either<Failure, List<Transaction>>> call() async {
    return await repository.getTransactions();
  }
}
