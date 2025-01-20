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
            CustomButton(
              icon: Icons.plus_one,
              onPressed: () {
                setState(() {
                  clickCounter++;
                });
              },
            ),

            //Widget para dar espacios entre boton
            const SizedBox(
                height: 10), //Crea una caja para dar espacios y le doy styles
            //BOTON RESTA
            CustomButton(
              icon: Icons.exposure_minus_1_outlined,
              onPressed: () {
                if (clickCounter == 0) return;
                setState(() {
                  clickCounter--;
                });
              },
            ),
            //Widget para dar espacios entre boton
            const SizedBox(
                height: 10), //Crea una caja para dar espacios y le doy styles
            //BOTON REFREST
            CustomButton(
              icon: Icons.refresh_outlined,
              onPressed: () {
                setState(() {
                  clickCounter = 0;
                });
              },
            ),
            //Widget para dar espacios entre boton
            const SizedBox(
                height: 10), //Crea una caja para dar espacios y le doy styles
          ],
        ));
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;

  const CustomButton({
    super.key,
    required this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      //shape: StadiumBorder(), //Con Shape y esa propiedad hacemos el boton circular
      enableFeedback: true, // Cuando le das al boton hace una vibracion o ruido
      elevation: 10,
      backgroundColor: Colors.yellow,
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}
