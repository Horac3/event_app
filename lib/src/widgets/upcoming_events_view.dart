import 'package:event_booking/src/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class UpComingEventsView extends StatefulWidget {
  final String eventName;
  final String eventLocation;
  final String eventImageURL;
  final int attendees;
  final String time;

  const UpComingEventsView({super.key, required this.eventName, required this.eventLocation, required this.eventImageURL, required this.time, required this.attendees});

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
            width: 100,
            height: 28,
            child: [
              const Text('').scale50(),
             
            ].hStack(),
          ).objectBottomRight(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              VxBox()
                  .square(100)
                  .bgImage(DecorationImage(
                      image: AssetImage(widget.eventImageURL), fit: BoxFit.cover))
                  .rounded
                  .make(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                
                children: [
                  Text(widget.eventName).text.semiBold.make(),
                  const SizedBox(width: 10,),
                  const SizedBox(height: 5,),
                  Row(
                    children: [
                      const Icon(Icons.location_on),
                      const SizedBox(width: 10,),
                      Text(widget.eventLocation).text.sm.make(),
                    ],
                  ),
                  const SizedBox(height: 12,),
                  Row(
                    children: [
                      const Icon(Icons.calendar_today),
                      const SizedBox(width: 10,),
                      Text(widget.time).text.sm.make(),
                    ],
                    
                  ),
                  const SizedBox(height: 12,),
                  Row(
                    
                    children: [
                      const Icon(Icons.people_alt_outlined),
                      const SizedBox(width: 10,),
                      Text(widget.attendees.toString()).text.sm.make(),
                    ],
                    
                  )
                ],
              ).pSymmetric(h: 16, v: 12)
            ],
          )
        ],
      ),
    );
  }
}
