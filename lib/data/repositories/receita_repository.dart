import 'package:dartz/dartz.dart';
import 'package:dicume/core/failures/failures.dart';
import 'package:dicume/domain/entities/receita.dart';

class ReceitaRepository {

  List<Receita> receitas = [
    Receita(
        "Bolo de chocolate veg",
        "Delicioso!",
        "https://veganandcolors.com/wp-content/uploads/2020/07/c1-11-1024x576.jpg",
        4.8,
        100),
    Receita(
        "Hamburguer veg",
        "Fácil de fazer e muito delicioso!",
        "https://static.tuasaude.com/media/article/tb/cx/receitas-veganas_39818.jpg",
        5.0,
        50),
    Receita(
        "Ratatouille",
        "Aii qui diliça!",
        "https://claudia.abril.com.br/wp-content/uploads/2020/01/pc3a1scoa-vegana-prato-principal-1-ratatouille-mizina.jpg",
        4.5,
        150),
    Receita(
        "Pequi ao molho",
        "Aii qui diliça!",
        "https://claudia.abril.com.br/wp-content/uploads/2020/01/pc3a1scoa-vegana-prato-principal-1-ratatouille-mizina.jpg",
        4.5,
        150)
  ];

  Future<Either<Failure, List<Receita>>> all() async {
    await Future.delayed(const Duration(seconds: 3)); 
    return right(receitas);
  }

}