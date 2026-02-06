import 'package:dartz/dartz.dart';
import 'package:smart_wallet/core/error/failure.dart';
import 'package:smart_wallet/features/transaction/domain/entities/transaction.dart';

abstract class TransactionRepository {
  Future<Either<Failure, List<TransactionEntity>>> getTransactions();
  Future<Either<Failure, TransactionEntity>> getTransactionById(String id);
}
