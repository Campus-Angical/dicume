import 'package:dicume/domain/entities/receita.dart';

class ReceitaState {}

class ReceitaLoadingState extends ReceitaState {}

class ReceitaFailureState extends ReceitaState {}

class ReceitaLoadedState extends ReceitaState {
  Receita receita;
  ReceitaLoadedState(this.receita);
}