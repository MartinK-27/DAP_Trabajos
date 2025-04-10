import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  TextEditingController usuario = TextEditingController();
  TextEditingController password = TextEditingController();
  String textoingresado1 = '';
  String textoingresado2 = '';
  bool visible = true;
  void ojito(){
    setState(() {
      visible = !visible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(textoingresado1, style: TextStyle(fontSize: 50, color: const Color.fromARGB(255, 58, 233, 15)),),
              Text(
                textoingresado2,
                style: TextStyle(fontSize: 50, color: const Color.fromARGB(255, 202, 23, 23)),
              ),
              SizedBox(height: 100),

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
                    suffixIcon: IconButton(onPressed: ojito, icon: Icon(visible ? Icons.visibility_off : Icons.visibility,),)
                  ),
                ),
              ),

              SizedBox(height: 100),

              ElevatedButton(
                onPressed: () {
                  setState(() {
                    textoingresado1 = usuario.text;
                    textoingresado2 = password.text;
                    if (textoingresado1 == 'MartinK_27') {
                      if (textoingresado2 == 'MecatronicaDab123') {
                        textoingresado1 = 'Incio de sesion exitoso';
                        textoingresado2 = '';
                        setState(() {});
                      } else {
                        textoingresado1 = '';
                        textoingresado2 =
                            'Error, Usuario o Contraseña invalidos';
                      }
                    } else {
                      textoingresado1 = '';
                      textoingresado2 = 'Error, Usuario o Contraseña invalidos';
                    }
                  });
                },
                child: Text('Verificar'),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
