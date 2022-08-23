import 'dart:ui';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dicume"),
        backgroundColor: Color.fromARGB(255, 155, 211, 83),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              color: Color.fromARGB(255, 231, 245, 216),
              child: Column(
              
        
                children: [
               
                  ListTile(
                    trailing: Icon(Icons.save_alt_sharp),
                    title: Text("Bolo de Chocolate veg"),
                    leading: Icon(Icons.person),
                    
                  ),
                  Image.network("https://veganandcolors.com/wp-content/uploads/2020/07/c1-11-1024x576.jpg"),
                  Text("Delicioso!!!", style: TextStyle(fontSize: 20),),
                  Row(children: [
              Icon(Icons.share),
              Icon(Icons.comment),
              Icon(Icons.star),
              Expanded(child: Icon(Icons.favorite))
              

                ],
                
              ), 
              
            ],)
            )
          ],
        ),
      ),
    );
  }
}
