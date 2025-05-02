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
  int contador = 0;
  double medida = 10;
  String texto = '';
  int R = 0;
  int B = 255;

  void textocrecimiento() {
    setState(() {
      if (medida < 250) {
        medida += 10;
      }
    });
  }

void textoachicar(){
  setState(() {
    if (medida > 10) {
        medida -= 10;
      }
  });
}

void mostrar(){
  setState(() {
    texto = 'MECA';
  });
}

void borrar(){
  setState(() {
    texto = '';
  });
}

void azul(){
  setState(() {
    R = 0;
    B = 255;
  });
}

void rojo(){
  setState(() {
    R = 255;
    B = 0;
  });
}
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(texto),
          centerTitle: true,
          toolbarHeight: 500,
          titleTextStyle: TextStyle(
            color: Color.fromARGB(255, R, 0, B),
            fontSize: medida,
          ),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 20,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 20,
              children: [
                Column(
                  children: [
                    Center(
                      child: FloatingActionButton.extended(
                        onPressed: mostrar,
                        label: Text('MOSTRAR'),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Center(
                      child: FloatingActionButton.extended(
                        onPressed: textocrecimiento,
                        label: Text('+'),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Center(
                      child: FloatingActionButton.extended(
                        onPressed: azul,
                        label: Text('AZUL'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 20,
                  children: [
                    Column(
                      children: [
                        Center(
                          child: FloatingActionButton.extended(
                            onPressed: borrar,
                            label: Text('BORRAR'),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Center(
                          child: FloatingActionButton.extended(
                            onPressed: textoachicar,
                            label: Text('-'),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Center(
                          child: FloatingActionButton.extended(
                            onPressed: rojo,
                            label: Text('ROJO'),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
