import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final List<String> dados = ["Diablo IV", "Diablo III", "Diablo II", "Diablo I"];


  @override
    Widget build(BuildContext context){
        return MaterialApp(
          title: "Jogos da Franquia Diablo",
          theme: ThemeData(
            primaryColor: Colors.teal
          ),
          home: Card(
            child: ListView.separated(
              padding: const EdgeInsets.all(8),
              itemCount: dados.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 50,
                  child: Center(child: Text(dados[index])),
                );
              },
              separatorBuilder: (BuildContext context, int index) => const Divider(),
            ),
          ),
        );
    }
}