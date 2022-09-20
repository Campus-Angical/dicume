import 'package:dicume/presentation/controllers/receita/receita_details_ctrl.dart';
import 'package:dicume/presentation/states/receita/receita_state.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReceitaDetailsPage extends GetWidget<ReceitaDetailsCtrl> {
  const ReceitaDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Obx(
      (() {
        if (controller.state is ReceitaLoadedState) {
          final state = controller.state as ReceitaLoadedState;
          return Padding(
            padding: const EdgeInsets.fromLTRB(15, 12, 15, 12),
            child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)),
                color: Color.fromARGB(255, 223, 253, 198),
                child: Column(
                  children: [
                    ListTile(
                   
                      title: Text(state.receita.nome),
                      leading: Icon(Icons.person),
                    ),
                    Image.network(state.receita.url),
                    SizedBox(
                      height: 20,
                    ),
                   
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Chip(avatar: Icon(Icons.local_dining_rounded,
                            color: Color.fromARGB(255, 0, 0, 0),
                            size: 30,), 
                            
                            label :
                            Text("5 porções"), labelStyle: TextStyle(fontSize: 20),
                            backgroundColor: Color.fromARGB(255, 223, 253, 198),
                        ) ,
                         Text(
                          "#caju", style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold ),
                          
                        ),
                   ] ),
                  ],
                )),
          );
        }

        if (controller.state is ReceitaFailureState) {
          return Text('Erro');
        }

        if (controller.state is ReceitaLoadingState) {
          return CircularProgressIndicator();
        }

        controller.search();
        return CircularProgressIndicator();
      }),
    ));
  }
}
