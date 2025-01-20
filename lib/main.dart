import 'package:flutter/material.dart';
import 'package:hello_world_app/presentation/screens/counter/counter_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner:
            false, //Quita la etiqueta del modo desarrollo
        theme: ThemeData(
            useMaterial3: true,
            colorSchemeSeed: Colors
                .teal), //Esto es para poner el tema, a nivel 3, que en mi caso no hace falta ponerlo
        home: const CounterScreen());
  }
}
