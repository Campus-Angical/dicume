import 'package:dicume/data/repositories/receita_repository.dart';
import 'package:dicume/presentation/states/home_state.dart';
import 'package:get/get.dart';

class HomeCtrl extends GetxController {
  ReceitaRepository repository = Get.find();

  final _state = HomeState().obs;
  HomeState get state => _state.value;

  Future<void> search() async {
    _state(HomeLoadingState());
    (await repository.all()).fold(
      (failure) => _state(HomeFailureState()), 
      (receitas) => _state(HomeLoadedState(receitas))
    );
  }
}
