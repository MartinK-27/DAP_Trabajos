import 'package:flutter/material.dart';
import 'package:login_screen_v5/entieties/balatro_cards.dart';

class CardDetail extends StatelessWidget {
  final Balatro card;

  const CardDetail({super.key, required this.card});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(card.name, style: TextStyle(fontSize: 24, color:
                                card.rarity == 'Legendary'
                                    ? Colors.purple
                                    : card.rarity == 'Rare'
                                    ? const Color.fromARGB(255, 243, 33, 33)
                                    : card.rarity == 'Uncommon'
                                    ? const Color.fromARGB(255, 63, 223, 15)
                                    : Colors
                                        .grey,)),
            SizedBox(height: 16),
            Text(card.description, style: TextStyle(fontSize: 18)),
            SizedBox(height: 16),
            Image.network(
              card.image,
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
