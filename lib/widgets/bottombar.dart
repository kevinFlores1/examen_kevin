import 'package:flutter/material.dart';

class BarraInferior extends StatelessWidget {

  final Color background;
  final List <Widget> tabs;

  const BarraInferior({Key? key, required this.background, required this.tabs,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64.0,
      decoration: BoxDecoration(color: background),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: tabs
      ),
    );
  }
}
