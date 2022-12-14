import 'package:dicume/domain/entities/receita.dart';
import 'package:dicume/presentation/controllers/home_ctrl.dart';
import 'package:dicume/presentation/states/home_state.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetWidget<HomeCtrl> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 118, 196, 16),
        title: const Text("Dicumê"),
      ),
      body: Obx(() {
        if (controller.state is HomeLoadedState) {
          HomeLoadedState state = controller.state as HomeLoadedState;
          return SingleChildScrollView(
            child: Column(
              children: _buildList(state.receitas),
            ),
          );
        }

        if (controller.state is HomeFailureState) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text('Pena, um erro!'),
            ],
          );
        }

        if (controller.state is HomeLoadingState) {
          return _buildProgressLoading();
        }

        controller.search();
        return _buildProgressLoading();
      }),
    );
  }

  List<Widget> _buildList(List<Receita> receitas) {
    List<Widget> cards = [];
    for (Receita receita in receitas) {
      cards.add(Padding(
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
                  title: Text(receita.nome),
                  leading: Icon(Icons.person),
                ),
                Image.network(receita.url),
                SizedBox(
                  height: 20,
                ),
                Text(
                  receita.descricao,
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
                      label: Text("${receita.estrelas}"),
                    ),
                    Chip(
                      avatar: Icon(
                        Icons.favorite,
                        color: Colors.red,
                      ),
                      backgroundColor: Color.fromARGB(255, 223, 253, 198),
                      label: Text("${receita.likes}"),
                    ),
                  ],
                )
              ],
            )),
      ));
    }
    return cards;
  }

  Widget _buildProgressLoading() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Center(child: CircularProgressIndicator()),
        SizedBox(
          height: 10,
        ),
        Text('Carregando...')
      ],
    );
  }
}
