import 'dart:convert';
import 'dart:developer';
import 'package:event_booking/src/events/data/data.dart';
import 'package:flutter/services.dart';


class DataSource{
static Future<EventsData> loadJsonData() async {
  // Load the JSON file
  String jsonString = await rootBundle.loadString('assets/json/event_data.json');

  // Parse the JSON string
  final jsonData = json.decode(jsonString);
  final eventData = EventsData.fromJson(jsonData);

  log("$eventData");
  return eventData;
}

}
