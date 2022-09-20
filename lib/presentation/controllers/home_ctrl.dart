import 'package:dicume/presentation/states/home_state.dart';
import 'package:get/get.dart';
import 'package:dicume/domain/usecases/receita/list_receitas.dart';

class HomeCtrl extends GetxController {
  final ListReceita _listReceita = Get.find();

  final _state = HomeState().obs;
  HomeState get state => _state.value;

  Future<void> search() async {
    _state(HomeLoadingState());
    (await _listReceita(ListReceitaParam())).fold(
        (failure) => _state(HomeFailureState()),
        (receitas) => _state(HomeLoadedState(receitas)));
  }
}
