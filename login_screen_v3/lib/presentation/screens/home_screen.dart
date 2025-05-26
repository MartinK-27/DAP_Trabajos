import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  
  final String textoingresado1;

  const HomeScreen({super.key, required this.textoingresado1});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome to the Home Screen $textoingresado1',
                style: TextStyle(
                  fontSize: 24,
                  color: Color.fromARGB(255, 71, 238, 20),
                )),
            
            
          ],
        ),
      ),
    );
  }
}