import 'package:dartz/dartz.dart';
import 'package:dicume/core/failures/failures.dart';

abstract class UseCase<T, Params> {
  
  Future<Either<Failure, T>> call(Params params);
  
}