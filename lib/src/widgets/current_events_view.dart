
import 'package:event_booking/src/constants/constants.dart';
import 'package:flutter/material.dart';

import 'package:velocity_x/velocity_x.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:event_booking/src/widgets/widgets.dart';

class CurrentEventView extends StatelessWidget {
  const CurrentEventView({super.key});

  @override
  Widget build(BuildContext context) {
    return RoundedBox(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          VStack([
          const Text("Nov").text.xl4.thin.tighter.make(),
          const Text("20").text
          .xl6
          .size(19)
          .tightest
          .bold
          .color(Vx.hexToColor("#595236"))
          .fontFamily(GoogleFonts.poppins().fontFamily!).make()
          ]),
          const Spacer(),
          VStack([
            VxCapsule(
              height: 30,
              width: context.percentWidth * 50,
              backgroundColor: AppColors.greenTouch,
              child: const Text("Current Event")
              .text
              .white
              .make()
              .px12()
              .objectCenterLeft(),
            ),
            const Spacer(),
            VStack([
              const Text("Stand Up").text.semiBold.make(),
              const Text("20-23 November").text.make()
            ],
            axisSize: MainAxisSize.max,)
            .box
            .border(color: AppColors.greenTouch, width: 3)
            .p16
            .rounded
            .width(context.percentWidth * 50)
            .make(), 
            const Spacer(),
            VxCapsule(
              width: context.percentWidth * 50,
              height: 30,
              backgroundColor: AppColors.yellow,
              child: const Text("Happy Hour")
              .text
              .make()
              .px12()
              .objectBottomLeft(),
            )
          ])
        ],
      ),
    ).h(300);
  }
}