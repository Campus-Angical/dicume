import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dicume")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                ListTile(
              
                  trailing: Icon(Icons.save_alt_sharp) ,
                  title:  Text("Creme de Pequi"),
                  leading: Icon(Icons.person),
                )

              ],
            )
          ],
        ),
      ),
    );
  }
}