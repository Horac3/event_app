import 'package:event_app/src/constants/constants.dart';
import 'package:event_app/src/events/data/data.dart';
import 'package:event_app/src/widgets/vendors_tile.dart';
import 'package:flutter/material.dart';

import 'package:velocity_x/velocity_x.dart';

class Scroll extends StatelessWidget {
    final int id;
  final String name;
  final String type;
  final String date;
  final String location;
  final String description;
  final int attendees;
  final String image;
  final List<Vendor> vendors;
  const Scroll({super.key, required this.id, required this.name, required this.type, required this.date, required this.location, required this.description, required this.attendees, required this.image, required this.vendors});

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
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
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
                Text(name, style: const TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
                Text(location, style: const TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage(image),
                    ),
                    const SizedBox(width: 5,),
                    Text(type, style: const TextStyle(color: Colors.black, fontSize: 18),)
                  ],
                ),
                const SizedBox(height: 10,),
                Text(description).text.size(14).italic.justify.semiBold.color(Colors.black).make(),
                const SizedBox(height: 5,),
                //const Text('Preview').text.xl2.semiBold.color(Colors.black).make(),
                Expanded(child: 
                ListView.builder(
                  itemCount: vendors.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index){
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                  
                      children: [
                    
                        VendorsTile(image: vendors[index].image, name: vendors[index].name, businessType: vendors[index].businessType, products: vendors[index].products,),
                       
                        
                      ],
                    ),
                  );
                }))
              ],
              
            ),
          ),
        );
      },
    );
  }
}