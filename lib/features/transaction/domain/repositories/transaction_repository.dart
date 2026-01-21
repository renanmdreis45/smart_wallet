import 'package:dartz/dartz.dart';
import 'package:smart_wallet/core/error/failure.dart';
import 'package:smart_wallet/features/transaction/domain/entities/transaction.dart';

abstract class TransactionRepository {
  Future<Either<Failure, List<Transaction>>> getTransactions();
  Future<Either<Failure, Transaction>> getTransactionById(String id);
}
