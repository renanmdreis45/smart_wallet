import 'package:dartz/dartz.dart';
import 'package:smart_wallet/core/error/failure.dart';
import 'package:smart_wallet/features/transaction/domain/entities/transaction.dart';
import 'package:smart_wallet/features/transaction/domain/repositories/transaction_repository.dart';

class GetTransactions {
  final TransactionRepository repository;

  GetTransactions(this.repository);

  Future<Either<Failure, List<Transaction>>> execute() async {
    return await repository.getTransactions();
  }
}
