import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class RoundedBox extends StatelessWidget {
  const RoundedBox({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return VxBox(child: child
    ).color(Vx.hexToColor("#fff6db"))
    .roundedLg
    .p24.make();
  }
}