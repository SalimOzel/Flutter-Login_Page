import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({
    Key? key,
    required this.height,
  }) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: height * .25,
        child: Image.asset("assets/images/topImage.png", fit: BoxFit.cover),
      ),
    );
  }
}
