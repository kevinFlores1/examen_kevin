import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:parcial/widgets/bottombar.dart';
import 'package:parcial/widgets/carta.dart';
import 'package:parcial/widgets/icono.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icono(image: 'assets/rey.svg'),
        title: const Text('Mi Tienda Virtual'),
        elevation: 6.0,
        actions: [
          const Icono(image: 'assets/person.svg'),
          SizedBox(width: 8.0),
          const Icono(image: 'assets/compartir.svg'),
          SizedBox(width: 8.0),
          const Icono(image: 'assets/salida.svg'),
          SizedBox(width: 8.0),
        ],
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Column(
            children: [
              const SizedBox(height: 16.0),
              Container(
                child: Image.asset('assets/promocion.jpg'),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 4), // changes position of shadow
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Carta(
                    background: Colors.blue,
                    start: [
                      Icon(CupertinoIcons.heart_fill, color: Colors.pinkAccent),
                      Icon(CupertinoIcons.heart_fill, color: Colors.pinkAccent),
                      Icon(CupertinoIcons.heart_fill, color: Colors.pinkAccent),
                      Icon(CupertinoIcons.heart_fill, color: Colors.pinkAccent),
                     Icon(CupertinoIcons.heart_fill, color: Colors.pinkAccent),
                    ],
                    image: 'assets/promocion1.jpg',
                  ),
                  Carta(
                    isFavorite: true,
                    background: Colors.orange,
                    start: [
                      Icon(CupertinoIcons.heart_fill, color: Colors.pinkAccent),
                      Icon(CupertinoIcons.heart_fill, color: Colors.pinkAccent),
                      Icon(CupertinoIcons.heart_fill, color: Colors.pinkAccent),
                      Icon(CupertinoIcons.heart_fill, color: Colors.pinkAccent),
                     Icon(CupertinoIcons.heart_fill, color: Colors.pinkAccent),
                    ],
                    image: 'assets/promocion2.jpg',
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Carta(
                    background: Colors.green,
                    start: [
                        Icon(CupertinoIcons.heart_fill, color: Colors.pinkAccent),
                      Icon(CupertinoIcons.heart_fill, color: Colors.pinkAccent),
                      Icon(CupertinoIcons.heart_fill, color: Colors.pinkAccent),
                      Icon(CupertinoIcons.heart_fill, color: Colors.pinkAccent),
                     Icon(CupertinoIcons.heart_fill, color: Colors.pinkAccent),
                    ],
                    image: 'assets/promocion2.jpg',
                  ),
                  Carta(
                    isFavorite: true,
                    background: Colors.yellow,
                    start: [
                      Icon(CupertinoIcons.heart_fill, color: Colors.pinkAccent),
                      Icon(CupertinoIcons.heart_fill, color: Colors.pinkAccent),
                      Icon(CupertinoIcons.heart_fill, color: Colors.pinkAccent),
                      Icon(CupertinoIcons.heart_fill, color: Colors.pinkAccent),
                     Icon(CupertinoIcons.heart_fill, color: Colors.pinkAccent),
                    ],
                    image: 'assets/promocion1.jpg',
                  ),
                ],
              ),
            ],
          ),
          BarraInferior(
            background: Colors.white,
            tabs: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icono(image: 'assets/logo.svg'),
                  Text('Home'),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icono(image: 'assets/historial.svg'),
                  Text('Historial'),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icono(image: 'assets/oferta.svg'),
                  Text('Ofertas'),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icono(image: 'assets/rey.svg'),
                  Text('Apps'),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
