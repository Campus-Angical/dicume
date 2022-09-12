import 'package:dicume/domain/entities/receita.dart';

class HomeState {}

class HomeLoadingState extends HomeState {}

class HomeLoadedState extends HomeState {
  List<Receita> receitas;
  HomeLoadedState(this.receitas);
}

class HomeFailureState extends HomeState {}
