import 'package:dartz/dartz.dart';
import 'package:smart_wallet/core/error/failure.dart';

abstract class NoParamsUseCase <Type> {
  Future<Either<Failure, Type>> call();
}