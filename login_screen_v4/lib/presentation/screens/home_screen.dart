import 'package:flutter/material.dart';
import 'package:login_screen_v3/entieties/users.dart';
import 'package:login_screen_v3/entieties/balatro_cards.dart';

class HomeScreen extends StatelessWidget {
  final Users usuarioingresando;
  final cards = balatroList;

  HomeScreen({super.key, required this.usuarioingresando});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Bienvenido ${usuarioingresando.nombre} ${usuarioingresando.direccion}',
        ),
      ),
      body: ListView.builder(
        itemCount: cards.length,
        itemBuilder: (context, index) {
          //return Text(movies[index].title);   //Ejemplo 1
          return Card(
            child: ListTile(
              title: Text.rich(
                TextSpan(
                  text: 'Card ID: ${cards[index].id}\n',
                  style: TextStyle(fontSize: 16, color: Colors.black54),
                  children: [
                    TextSpan(
                      text: cards[index].name,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          text: ' - ${cards[index].rarity}',
                          style: TextStyle(
                            fontSize: 16,
                            fontStyle: FontStyle.italic,
                            color:
                                cards[index].rarity == 'Legendary'
                                    ? Colors.purple
                                    : cards[index].rarity == 'Rare'
                                    ? const Color.fromARGB(255, 243, 33, 33)
                                    : cards[index].rarity == 'Uncommon'
                                    ? const Color.fromARGB(255, 63, 223, 15)
                                    : Colors
                                        .grey, // Default color for other rarities
                          ),
                        ),
                        TextSpan(
                          text: ' - \$${cards[index].price}',
                          style: TextStyle(
                            fontSize: 16,
                            color: const Color.fromARGB(255, 219, 181, 9),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              subtitle: Text(cards[index].description),
              leading: Image.network(
                cards[index].image,
                width: 80,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }
}
