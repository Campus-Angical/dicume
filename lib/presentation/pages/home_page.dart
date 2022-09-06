import 'package:dicume/domain/entities/receita.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  List<Receita> receitas = [
    Receita(
        "Bolo de chocolate veg",
        "Delicioso!",
        "https://veganandcolors.com/wp-content/uploads/2020/07/c1-11-1024x576.jpg",
        4.8, 100),
    Receita(
        "Hamburguer veg",
        "Fácil de fazer e muito delicioso!",
        "https://static.tuasaude.com/media/article/tb/cx/receitas-veganas_39818.jpg",
        5.0, 50),
    Receita(
        "Ratatouille",
        "Aii qui diliça!",
        "https://claudia.abril.com.br/wp-content/uploads/2020/01/pc3a1scoa-vegana-prato-principal-1-ratatouille-mizina.jpg",
        4.5, 150)
  ];

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dicumê"),
        backgroundColor: Color.fromARGB(255, 118, 196, 16),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: _buildList(receitas),
        ),
      ),
    );
  }

  List<Widget> _buildList(List<Receita> receitas) {
    List<Widget> cards = [];
    for (Receita receita in receitas) {
      cards.add(Padding(
        padding: const EdgeInsets.fromLTRB(15, 12, 15, 12),
        child: Card(
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
                SizedBox(height: 20,),
                Text(
                  receita.descricao,
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 20,),
                  Row(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                
                    Icon(Icons.share, color: Color.fromARGB(255, 123, 128, 123)),
                    Icon(Icons.comment, color: Color.fromARGB(255, 123, 128, 123),),
                  Chip (
                  avatar: Icon(Icons.star, color: Colors.yellow,),
                  backgroundColor: Color.fromARGB(255, 223, 253, 198),
                  label: Text("${receita.estrelas}"),),
                  Chip (
                  avatar: Icon(Icons.favorite, color: Colors.red,),
                  backgroundColor: Color.fromARGB(255, 223, 253, 198),
                  label: Text("${receita.likes}"),),
                    ],
                )
              ],
            )),
      ));
    }
    return cards;
  }
}
