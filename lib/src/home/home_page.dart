import 'package:event_booking/src/events/data/data.dart';
import 'package:event_booking/src/events/screens/view_all.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    // Future getData() async{
    //   try {
    //     log('Are we in?');
    //     final eventData = DataSource.loadJsonData();
    //     return eventData;
    //   } catch (e) {
    //     return e.toString();
    //   }
    // }
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
               GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const ViewAll() ));
                },
                child: const Text('View All').text.xl2.thin.tighter.make()), 
          
              ],
            ),
          ),
          //Upcoming Events
          Expanded(
            child: FutureBuilder<List<Event>?>(

              future: DataSource.loadJsonData(),
              builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
              final data = snapshot.data;
                
                if (snapshot.hasData) {
                  return ListView.builder(
                itemCount: 3,
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  
                  return UpComingEventsView(eventName: data[index].name, eventLocation: data[index].location, eventImageURL: data[index].image, time: data[index].date, attendees: data[index].attendees,).p20().h(context.percentHeight * 38);
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