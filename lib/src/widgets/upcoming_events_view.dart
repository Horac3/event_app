import 'package:event_booking/src/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class UpComingEventsView extends StatefulWidget {
  const UpComingEventsView({super.key});

  @override
  State<UpComingEventsView> createState() => _UpComingEventsViewState();
}

class _UpComingEventsViewState extends State<UpComingEventsView> {
  @override
  Widget build(BuildContext context) {
    return RoundedBox(
      child: Column(
        children: [
          VxCapsule(
            backgroundColor: Vx.hexToColor("#c4ecd4"),
            width: 90,
            height: 28,
            child: [
              const Icon(Icons.phone_android).scale50(),
              const Text("Date").text.xs.make(),
            ].hStack(),
          ).objectBottomRight(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              VxBox()
                  .square(90)
                  .bgImage(const DecorationImage(
                      image: NetworkImage(""), fit: BoxFit.cover))
                  .rounded
                  .make(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Event Name").text.semiBold.make(),
                  const Text("Event Description").text.sm.make()
                ],
              ).pSymmetric(h: 16, v: 12)
            ],
          )
        ],
      ),
    );
  }
}
