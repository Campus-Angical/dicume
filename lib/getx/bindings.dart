import 'package:dicume/data/repositories/receita_repository.dart';
import 'package:dicume/presentation/controllers/home_ctrl.dart';
import 'package:get/get.dart';

class DependenciesBinding implements Bindings{
  @override 
  void dependencies(){
    Get.put(ReceitaRepository());
    Get.put(HomeCtrl());
  }
}