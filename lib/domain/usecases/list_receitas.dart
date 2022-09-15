import 'package:dicume/core/failures/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:dicume/core/usecases/usecases.dart';
import 'package:dicume/data/repositories/receita_repository.dart';
import 'package:dicume/domain/entities/receita.dart';
import 'package:get/get.dart';

class ListReceita implements UseCase<List<Receita>, ListReceitaParam> {
  final ReceitaRepository _repository = Get.find();

  @override
  Future<Either<Failure, List<Receita>>> call(ListReceitaParam params) {
    return _repository.all();
  }
}

class ListReceitaParam {}