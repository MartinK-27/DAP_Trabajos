import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController usuario = TextEditingController();
  TextEditingController password = TextEditingController();
  String texto = 'Ingrese el usuraio y contraseña';
  String textoingresado1 = '';
  String textoingresado2 = '';
  int R = 255;
  int G = 255;
  int B = 255;
  bool visible = true;
  void ojito() {
    setState(() {
      visible = !visible;
    });
  }

  void mostrarSnackBar(BuildContext context, String message) {
    final snackBar = SnackBar(
      content: Text(message, style: TextStyle(color: Color.fromARGB(255, R, G, B)),),
      duration: Duration(seconds: 3),
    );

    // Usamos ScaffoldMessenger para mostrar el SnackBar
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                texto,
                style: TextStyle(
                  fontSize: 50,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),

              Padding(
                padding: EdgeInsets.all(50),
                child: TextField(
                  controller: usuario,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Usuraio',
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.all(50),
                child: TextField(
                  controller: password,
                  obscureText: visible,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Contraseña',
                    suffixIcon: IconButton(
                      onPressed: ojito,
                      icon: Icon(
                        visible ? Icons.visibility_off : Icons.visibility,
                      ),
                    ),
                  ),
                ),
              ),

              ElevatedButton(
                onPressed: () {
                  setState(() {
                    textoingresado1 = usuario.text;
                    textoingresado2 = password.text;
                    if (textoingresado1 == '' || textoingresado2 == '') {
                      mostrarSnackBar(context, 'Error, el usuario o la contraseña no pueden estar vacios');
                      R = 255;
                      G = 0;
                      B = 0;
                      setState(() {});
                    } 
                    else {
                      if (textoingresado1 == 'MartinK_27') {
                        if (textoingresado2 == 'MecatronicaDap123') {
                          R = 0;
                          G = 255;
                          B = 0;
                          mostrarSnackBar(context, 'Incio de sesion exitoso');
                          context.go('/home', extra: textoingresado1);
                          setState(() {});
                        } else {
                          mostrarSnackBar(context, 'Error, Usuario o Contraseña invalidos');
                          setState(() {});
                        }
                      } else {
                        R = 255;
                        G = 0;
                        B = 0;
                        mostrarSnackBar(context, 'Error, Usuario o Contraseña invalidos');
                        setState(() {});
                      }
                    }
                  });
                },
                child: Text('Verificar'),
              ),
            ],
          ),
        ),
      );
  }
}