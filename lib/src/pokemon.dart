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
      body: ListView .builder(
        itemCount: listpokemon.length,
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.all(20),
            child: Text(
              listpokemon[index],
              style: TextStyle(fontSize: 20),
            ),
          );
        },
      ),
    );
  }
}