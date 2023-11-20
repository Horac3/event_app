import 'package:event_booking/src/home/home_page.dart';
import 'package:flutter/material.dart';



/// The Widget that configures your application.
class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
    
  });



  @override
  Widget build(BuildContext context) {
 
    return MaterialApp(
   
  
      theme: ThemeData(),
      darkTheme: ThemeData.dark(),
      
      debugShowCheckedModeBanner: false,
      // Define a function to handle named routes in order to support
      // Flutter web url navigation and deep linking.
      home: const HomePage(),
    );
  }
}
