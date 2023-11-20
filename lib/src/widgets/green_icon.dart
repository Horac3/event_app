import 'package:flutter/material.dart';

import '../constants/constants.dart';

class GreenIcon extends StatelessWidget {
  const GreenIcon({super.key, required this.icon});
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      color: AppColors.greenTouch,
    );
  }
}