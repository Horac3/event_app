import 'package:event_booking/src/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class EventRegistrationForm extends StatefulWidget {
  const EventRegistrationForm({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _EventRegistrationFormState createState() => _EventRegistrationFormState();
}

class _EventRegistrationFormState extends State<EventRegistrationForm> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController typeController = TextEditingController();
  final TextEditingController dateController = TextEditingController();
  final TextEditingController locationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Vx.hexToColor("#e8eddb"),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                hintText: 'Event Name',
              ),
            ),
            const SizedBox(height: 16.0),
            TextField(
              controller: typeController,
              decoration: const InputDecoration(
                hintText: 'Event Type',
              ),
            ),
            const SizedBox(height: 16.0),
            TextField(
              controller: dateController,
              decoration: const InputDecoration(
                hintText: 'Event Date (YYYY-MM-DD)',
              ),
            ),
           const  SizedBox(height: 16.0),
            TextField(
              controller: locationController,
              decoration: const InputDecoration(
                hintText: 'Event Location',
              ),
            ),
           const  SizedBox(height: 16.0),
            TextButton(
              onPressed: () {
                // Handle form submission here
                // You can access the entered values using the controllers
               
              },
              child: VStack([
              VxCapsule(
                height: 40,
                width: context.percentWidth * 50,
                backgroundColor: AppColors.greenTouch,
                child: Center(
                  child: const Text("Register")
                  .text
                  .white
                  .make()
                  .px12()
                  .objectCenter()
                ),
              ),])
            ),
          ],
        ),
      ),
    );
  }
}