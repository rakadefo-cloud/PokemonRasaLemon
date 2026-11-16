import 'package:flutter/material.dart';
import '../Data/Pokemon_Model.Dart';

class Pokemon2 extends StatelessWidget {
   Pokemon2({super.key});

   final List<PokemonModel> listpokemon = [
    PokemonModel('bullbasaur', 'images/bullbasaur.png'),
    PokemonModel('charmander', 'images/charmander.png'),
    PokemonModel('eevee', 'images/eevee.png'),
    PokemonModel('pidgey', 'images/pidgey.png'),
    PokemonModel('pikachu', 'images/pikachu.png'),
    PokemonModel('pokeball', 'images/pokeball.png'),
    PokemonModel('rattata', 'images/rattata.png'),
    PokemonModel('snorlax', 'images/snorlax.png'),
    PokemonModel('squirtle', 'images/squirtle.png'),
    PokemonModel('zubat', 'images/zubat.png'),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(  
      appBar: AppBar(
        title: Text("My Pokemon App"),
      ), // App Bar
      // body: Container(
      //   child: Image.asset("images/Zubat.png"),
      // ),
      body: ListView.builder(
        itemCount: listpokemon.length,
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.all(20),
            child: Text(
              listpokemon[index].name,
              style: TextStyle(fontSize: 20),
            ), // Text
          ); // Container
        },
      ), // ListView.builder
    ); //Scaffold
  } 
}