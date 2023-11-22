import 'package:event_booking/src/constants/constants.dart';
import 'package:flutter/material.dart';

class Scroll extends StatelessWidget {
  const Scroll({super.key});

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.6,
      maxChildSize: 1.0,
      minChildSize: 0.6,
      builder: (context, scrollController) {
        return Container(
          clipBehavior: Clip.hardEdge,
          decoration:  BoxDecoration(
            color: AppColors.yellow, 
            borderRadius: const BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40))
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 5,
                      width: 35,
                      color: AppColors.greenTouch,
                    )
                  ],
                ),
              ),
              const Text("EVENT NAME"),
              const Text("EVENT LOCATION")
            ],
          ),
        );
      },
    );
  }
}