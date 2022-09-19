import 'package:dicume/domain/usecases/get_receita.dart';
import 'package:dicume/presentation/states/receita_state.dart';
import 'package:get/get.dart';

class ReceitaDetailsCtrl extends GetxController {
  GetReceita getReceita = Get.find();

  final _state = ReceitaState().obs;
  ReceitaState get state => _state.value;

  Future<void> search() async {
    _state(ReceitaLoadingState());
    (await getReceita(ReceitaParam('1')))
        .fold((failure) => _state(ReceitaFailureState()), (receita) {
      if (receita != null) {
        _state(ReceitaLoadedState(receita));
      } else {
        _state(ReceitaFailureState());
      }
    });
  }
}
