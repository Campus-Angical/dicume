import 'package:dicume/data/repositories/receita_repository.dart';
import 'package:dicume/domain/usecases/receita/get_receita.dart';
import 'package:dicume/domain/usecases/receita/list_receitas.dart';
import 'package:dicume/presentation/controllers/home_ctrl.dart';
import 'package:dicume/presentation/controllers/receita/receita_details_ctrl.dart';
import 'package:get/get.dart';

class DependenciesBinding implements Bindings{
  @override 
  void dependencies(){
    // Repositories
    Get.put(ReceitaRepository());

    // Use Cases
    Get.put(ListReceita());
    Get.put(GetReceita());

    // Controllers
    Get.put(HomeCtrl());
    Get.put(ReceitaDetailsCtrl());
  }
}