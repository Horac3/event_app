
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Vx.hexToColor("#e8eddb"),
      bottomNavigationBar: const BottomNavBar(),
      body: Column(
        children: [
          CalenderView().p24()


          //Local Market 

          //Upcoming Events

        ],
      ),
    );
  }
}