import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class BookMarkedEvents extends StatelessWidget {
  const BookMarkedEvents({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Vx.hexToColor("#e8eddb"),
        body: const Center(
          child: Text('No Current Bookmarks', style: TextStyle(color: Colors.black, fontSize: 20),),
        ),
      ));
  }
}