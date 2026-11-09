import 'package:flutter/material.dart';

class Pokemon extends StatelessWidget {
   Pokemon({super.key});

  final List<String> listpokemon = [
    "Bullbasaur",
    "Charmander",
    "Eevee",
    "Pidgey",
    "Pikachu",
    "Pokeball",
    "Rattata",
    "Snorlax",
    "Squirtle",
    "Zubat",
  ];

  @override
  Widget build(BuildContext) {
    
    // print("_print pokemon ${listpokemon[1]}");
    listpokemon.forEach((Element) {
      if(Element == "Pikachu") {
        print("_print Pika pika");
      } else {
        print("_print $Element");
      }
    },);

    return Scaffold(
      appBar: AppBar (
        title: Text("My Pokemon App"),
      ),
      body: Container(
        color: Colors.white,
      ),
    );
  }
}