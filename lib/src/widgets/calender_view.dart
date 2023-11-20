
import 'package:flutter/material.dart';

import 'package:velocity_x/velocity_x.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:event_booking/src/widgets/widgets.dart';

class CalenderView extends StatelessWidget {
  const CalenderView({super.key});

  @override
  Widget build(BuildContext context) {
    return RoundedBox(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          VStack([
            
          const Text("November").text.xl4.thin.tighter.make(),
          const Text("20").text
          .xl6
          .size(19)
          .tightest
          .bold
          .color(Vx.hexToColor("#595236"))
          .fontFamily(GoogleFonts.poppins().fontFamily!).make()

          
          
          ])
        ],
      ),
    );
  }
}