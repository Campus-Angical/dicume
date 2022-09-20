import 'package:dicume/core/getx/bindings.dart';
import 'package:dicume/presentation/pages/receita/receita_detail_page.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: DependenciesBinding(),
      home: ReceitaDetailsPage(),
    );
  }
}

