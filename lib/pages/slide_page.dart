import 'package:flutter/material.dart';

class SlidePage extends StatelessWidget {
  final Widget body;
  SlidePage(this.body);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Container(
            color: Colors.white,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
        ),
        Center(
          child: new Image.asset(
            'assets/img/bg.png',
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.fill,
          ),
        ),
        this.body,
      ],
    );
  }
}
