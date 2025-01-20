import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Counter Functions'),
          actions: [
            IconButton(
              icon: const Icon(Icons.refresh_rounded),
              onPressed: () {
                setState(() {
                  clickCounter = 0;
                });
              },
            )
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment
                .center, //Con esto centramos el texto en el centro de la columna
            children: [
              Text(
                '$clickCounter',
                style:
                    const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
              ),
              Text(
                'Click${clickCounter == 1 ? '' : 's'}',
                style: const TextStyle(fontSize: 25),
              )
            ],
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            //BOTON SUMA
            FloatingActionButton(
              onPressed: () {
                setState(() {
                  //La funcion setState cambia el estado al momento
                  clickCounter++; //Funcion contadora del estado
                });
              },
              child: const Icon(Icons.plus_one),
            ),
            //Widget para dar espacios entre boton
            const SizedBox(
                height: 10), //Crea una caja para dar espacios y le doy styles

            //BOTON RESTA
            FloatingActionButton(
              onPressed: () {
                setState(() {
                  //La funcion setState cambia el estado al momento
                  clickCounter--; //Funcion contadora del estado
                });
              },
              child: const Icon(Icons
                  .exposure_minus_1_outlined), //Aqui camnbio el icono de resta
            ),
          ],
        ));
  }
}
