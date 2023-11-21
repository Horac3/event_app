
import 'package:event_booking/src/events/data/datasource/datasource.dart';
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
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Current Event
           const CurrentEventView().p24().h(context.percentHeight * 35),
          
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               const Text('Upcoming Events').text.xl2.thin.tighter.make(), 
               const Text('View All').text.xl2.thin.tighter.make(), 
          
              ],
            ),
          ),
          //Upcoming Events
          Expanded(
            child: FutureBuilder(

              future: DataSource.loadJsonData(),
              builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                itemCount: 10,
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) { 
                  return const UpComingEventsView().p24().h(context.percentHeight * 35);
                 },);
                } else {
                  return const Center(child: CircularProgressIndicator(),);
                }
                
               },
              
            ),
          )
          ],
        ),
      ),
    );
  }
}