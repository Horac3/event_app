import 'dart:convert';
import 'dart:developer';
import 'package:event_app/src/events/data/data.dart';
import 'package:flutter/services.dart';


class DataSource{
static Future<List<Event>?> loadJsonData() async {
  try {
  log("So we giving it a try");
  String jsonString = await rootBundle.loadString('assets/json/event_data.json');
  
  // Parse the JSON string
 Map<String, dynamic> jsonData = json.decode(jsonString);
EventData eventData = EventData.fromJson(jsonData);
 
  return eventData.events;
  } catch (e) {
    log("There is an error ${e.toString()}");
  
  }
  return null;
 
}

}
