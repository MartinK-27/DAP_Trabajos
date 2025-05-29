import 'package:flutter/material.dart';
import 'package:login_screen_v3/entieties/users.dart';

class HomeScreen extends StatelessWidget {
  
  final Users usuarioingresando;

  const HomeScreen({super.key, required this.usuarioingresando});


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
            Text('Bienvendio ${usuarioingresando.nombre}',
                style: TextStyle(
                  fontSize: 24,
                  color: Color.fromARGB(255, 0, 0, 0),
                )),
                Text('Vivis en ${usuarioingresando.direccion}',
                style: TextStyle(
                  fontSize: 24,
                  color: Color.fromARGB(255, 0, 0, 0),
                )),
            
            
          ],
        ),
      ),
    );
  }
}