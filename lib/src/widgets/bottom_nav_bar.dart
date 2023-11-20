
import 'package:event_booking/src/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../constants/constants.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return RoundedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(onPressed: () {},
          backgroundColor: AppColors.greenTouch,
          child: Icon(
            Icons.add,
            color: AppColors.white,
          ),
          ),
          const GreenIcon(icon:Icons.bookmark_outline),
          const GreenIcon(icon: Icons.calendar_today)
        ],
      ),
    ).p24();
  }
}