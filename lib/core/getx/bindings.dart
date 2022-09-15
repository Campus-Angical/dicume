import 'package:dicume/data/repositories/receita_repository.dart';
import 'package:dicume/domain/usecases/list_receitas.dart';
import 'package:dicume/presentation/controllers/home_ctrl.dart';
import 'package:get/get.dart';

class DependenciesBinding implements Bindings{
  @override 
  void dependencies(){
    // Repositories
    Get.put(ReceitaRepository());

    // Use Cases
    Get.put(ListReceita());

    // Controllers
    Get.put(HomeCtrl());
  }
}