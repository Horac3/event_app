import 'package:event_booking/src/widgets/widgets.dart';
import 'package:flutter/material.dart';

class EventDetail extends StatelessWidget {
  const EventDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            SizedBox(
              width: double.infinity,
              child: Container(
                height: 100,
                width: 100,

              ),
            ),
            const BackArrow(),
            const Scroll()
          ],
        ),
      ),
    );
  }
}