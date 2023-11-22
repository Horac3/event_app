
import 'package:event_booking/src/events/screens/bookmark.dart';
import 'package:event_booking/src/events/screens/register_form.dart';
import 'package:event_booking/src/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../constants/constants.dart';
import '../events/screens/view_all.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return RoundedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(onPressed: () {
            showModalBottomSheet(context: context, builder: (BuildContext context){
              return const EventRegistrationForm();
            });
            //Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const EventRegistrationForm() ));
          },
          backgroundColor: AppColors.greenTouch,
          child: Icon(
            Icons.add,
            color: AppColors.white,
          ),
          ),
          InkWell(
            onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const BookMarkedEvents() ));

            },
            child: const GreenIcon(icon:Icons.bookmark_outline)),
          InkWell(
            onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const ViewAll() ));

            },
            child: const GreenIcon(icon: Icons.calendar_today))
        ],
      ),
    ).p24();
  }
}