// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import '../Data/pokemon_model.Dart';

class Pokemon2 extends StatelessWidget {
  Pokemon2({super.key});

  final List<PokemonModel> listpokemon = [
    PokemonModel(name: "Zubat", image: "images/zubat.png"),
    PokemonModel(name: "Pikachu", image: "images/pikachu.png"),
    PokemonModel(name: "Charmander", image: "images/charmander.png"),
    PokemonModel(name: "Bulbasaur", image: "images/bullbasaur.png"),
    PokemonModel(name: "Eevee", image: "images/eevee.png"),
    PokemonModel(name: "Pidgey", image: "images/pidgey.png"),
    PokemonModel(name: "Squirtle", image: "images/squirtle.png"),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Pokemon App")), // App Bar
      // body: Container(
      //   child: Image.asset("images/Zubat.png"),
      // ),
      body: ListView.builder(
        itemCount: listpokemon.length,
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                Container(
                  width: 100,
                  padding: EdgeInsets.only(right: 20),
                  child: Image.asset(listpokemon[index].image), // Image
                ),
                Text(listpokemon[index].name, style: TextStyle(fontSize: 20)),
              ],
            ), // Text
          ); // Container
        },
      ), // ListView.builder
    ); //Scaffold
  }
}
