import 'package:flutter/material.dart';

class Pokemon extends StatelessWidget {
  const Pokemon({super.key});

  final List<Map<String, String>> listpokemon = const [
    {'name': 'Bullbasaur', 'image': 'images/bullbasaur.png'},
    {'name': 'Charmander', 'image': 'images/charmander.png'},
    {'name': 'Eevee', 'image': 'images/eevee.png'},
    {'name': 'Pidgey', 'image': 'images/pidgey.png'},
    {'name': 'Pikachu', 'image': 'images/pikachu.png'},
    {'name': 'Pokeball', 'image': 'images/pokeball.png'},
    {'name': 'Rattata', 'image': 'images/rattata.png'},
    {'name': 'Snorlax', 'image': 'images/snorlax.png'},
    {'name': 'Squirtle', 'image': 'images/squirtle.png'},
    {'name': 'Zubat', 'image': 'images/zubat.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Pokemon App'),
      ),
      body: ListView.builder(
        itemCount: listpokemon.length,
        itemBuilder: (context, index) {
          final pokemon = listpokemon[index];

          return Container(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                Container(
                  width: 100,
                  padding: const EdgeInsets.only(right: 20),
                  child: Image.asset(
                    pokemon['image']!,
                    fit: BoxFit.contain,
                  ),
                ),
                Text(
                  pokemon['name']!,
                  style: const TextStyle(fontSize: 20),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
