import 'package:event_app/src/events/screens/event_details.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../widgets/widgets.dart';
import '../data/data.dart';

class ViewAll extends StatelessWidget {
  const ViewAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Vx.hexToColor("#e8eddb"),
      body: SafeArea(
        
        child: FutureBuilder<List<Event>?>(

          future: DataSource.loadJsonData(),
          builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          final data = snapshot.data;
            
            if (snapshot.hasData) {
            return ListView.builder(
            itemCount: data.length,
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemBuilder: (BuildContext context, int index) {
              
              return InkWell(
                onTap: (){
                       Navigator.of(context).push(MaterialPageRoute(builder: (context)=> EventDetail(id: data[index].id, name: data[index].name, type: data[index].type, date: data[index].date, location: data[index].location, description: data[index].description, attendees: data[index].attendees, image: data[index].image, vendors: data[index].vendors,) ));

                },
                child: UpComingEventsView(eventName: data[index].name, eventLocation: data[index].location, eventImageURL: data[index].image, time: data[index].date, attendees: data[index].attendees,).p20().h(context.percentHeight * 38));
             },);
            } else {
              return const Center(child: CircularProgressIndicator(),);
            }
            
           },
          
        )),
    );
  }
}
