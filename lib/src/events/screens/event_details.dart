// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:event_app/src/events/data/data.dart';
import 'package:event_app/src/widgets/widgets.dart';

class EventDetail extends StatelessWidget {
  final int id;
  final String name;
  final String type;
  final String date;
  final String location;
  final String description;
  final int attendees;
  final String image;
  final List<Vendor> vendors;
  const EventDetail({
    Key? key,
    required this.id,
    required this.name,
    required this.type,
    required this.date,
    required this.location,
    required this.description,
    required this.attendees,
    required this.image,
    required this.vendors,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Vx.hexToColor("#e8eddb"),
        body: Stack(
          children: [
            SizedBox(
              width: double.infinity,
              child: Image.asset(image),

            ),
            const BackArrow(),
            Scroll(id: id, name: name, type: type, date: date, location: location, description: description, attendees: attendees, image: image, vendors: vendors,)
          ],
        ),
      ),
    );
  }
}
