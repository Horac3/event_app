

import '../data.dart';

abstract class DataRepository{
  Future<EventsData> getEventsData();

}