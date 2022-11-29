import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Icono extends StatelessWidget {
  final String image;
  const Icono({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: SvgPicture.asset(image, height: 40.0));
  }
}