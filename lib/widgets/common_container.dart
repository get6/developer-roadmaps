import 'package:flutter/material.dart';

class CommonContainer extends StatelessWidget {
  const CommonContainer({Key key, this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [const Color(0xFF0050AC), const Color(0xFF9354B9)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.3, 0.7],
        ),
      ),
      child: child,
    );
  }
}
