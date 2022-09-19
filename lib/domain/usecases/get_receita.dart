import 'package:dicume/core/failures/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:dicume/core/usecases/usecases.dart';
import 'package:dicume/data/repositories/receita_repository.dart';
import 'package:dicume/domain/entities/receita.dart';
import 'package:get/get.dart';

class GetReceita implements UseCase<Receita?, ReceitaParam> {

  ReceitaRepository repository = Get.find();
  @override

  Future<Either<Failure, Receita?>> call(ReceitaParam params) {
    return repository.get(params.id);
  }

}

class ReceitaParam {
  String id;

  ReceitaParam(this.id);
}