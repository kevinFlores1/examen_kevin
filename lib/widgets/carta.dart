import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Carta extends StatelessWidget {
  final Color background;
  final List<Widget> start;
  final bool? isFavorite;
  final String image;

  const Carta({
    Key? key,
    required this.background,
    required this.start,
    this.isFavorite = false,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 128.0,
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 4), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: start,
          ),
          Image.asset(
            image,
            height: 128.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            
            children: [
              isFavorite == true
                  ? Icon(
                      Icons.favorite,
                      color: Colors.red,
                    )
                  : Icon(CupertinoIcons.heart),
                  Container(width: 64.0,),
              Icon(Icons.details),
            ],
          ),
        ],
      ),
    );
  }
}
