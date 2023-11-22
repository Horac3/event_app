import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';


class VendorsTile extends StatelessWidget {
  final String image;
  final String name;
  final String businessType;
  final List products;
  const VendorsTile({
    super.key, required this.image, required this.name, required this.businessType, required this.products,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 129,
      width: 240,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(12),
      ),
      child:  Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
              Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(image))
                  ),
                  height: 110,
                  width: 220,
                  ),
                // Column(
                //   crossAxisAlignment: CrossAxisAlignment.start,
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                    
                //     Text(
                //       name,
                //       style: const TextStyle(color: Colors.black),
                //     ),
                //     Text(
                //        businessType,
                //        style: const TextStyle(color: Colors.black),
                //     ),
                    
                //     // ListView.builder(
                //     //   itemCount: products.length,
                //     //   itemBuilder: (context, index){
                //     //     return Row(
                //     //       children: [
                //     //         Text(products[index]),
                //     //       ],
                //     //     );
                //     // })
                //   ],
                // ),
              
              ],
            ),
          ],
        ),
      ),
    );
  }
}
