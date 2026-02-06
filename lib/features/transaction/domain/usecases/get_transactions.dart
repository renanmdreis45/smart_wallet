import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:smart_wallet/core/error/failure.dart';
import 'package:smart_wallet/core/usescases/usecase.dart';
import 'package:smart_wallet/features/transaction/domain/entities/transaction.dart';
import 'package:smart_wallet/features/transaction/domain/repositories/transaction_repository.dart';

class GetTransactions implements UseCase<List<TransactionEntity>, NoParams> {
  final TransactionRepository repository;

  GetTransactions(this.repository);

  @override
  Future<Either<Failure, List<TransactionEntity>>> call(NoParams params) async {
    return await repository.getTransactions();
  }
}

class NoParams extends Equatable {
  @override
  List<Object?> get props => [];
}
