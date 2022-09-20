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
                      trailing: Icon(Icons.save_alt_sharp),
                      title: Text(state.receita.nome),
                      leading: Icon(Icons.person),
                    ),
                    Image.network(state.receita.url),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      state.receita.descricao,
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(Icons.share,
                            color: Color.fromARGB(255, 123, 128, 123)),
                        Icon(
                          Icons.comment,
                          color: Color.fromARGB(255, 123, 128, 123),
                        ),
                        Chip(
                          avatar: Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          backgroundColor: Color.fromARGB(255, 223, 253, 198),
                          label: Text("${state.receita.estrelas}"),
                        ),
                        Chip(
                          avatar: Icon(
                            Icons.favorite,
                            color: Colors.red,
                          ),
                          backgroundColor: Color.fromARGB(255, 223, 253, 198),
                          label: Text("${state.receita.likes}"),
                        ),
                      ],
                    )
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
