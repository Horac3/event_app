// To parse this JSON data, do
//
//     final eventsData = eventsDataFromJson(jsonString);

import 'dart:convert';

EventsData eventsDataFromJson(String str) => EventsData.fromJson(json.decode(str));

String eventsDataToJson(EventsData data) => json.encode(data.toJson());

class EventsData {
    List<Event> events;

    EventsData({
        required this.events,
    });

    factory EventsData.fromJson(Map<String, dynamic> json) => EventsData(
        events: List<Event>.from(json["events"].map((x) => Event.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "events": List<dynamic>.from(events.map((x) => x.toJson())),
    };
}

class Event {
    int id;
    String name;
    String type;
    DateTime date;
    String location;
    int attendees;
    String theme;
    List<Vendor> vendors;

    Event({
        required this.id,
        required this.name,
        required this.type,
        required this.date,
        required this.location,
        required this.attendees,
        required this.theme,
        required this.vendors,
    });

    factory Event.fromJson(Map<String, dynamic> json) => Event(
        id: json["id"],
        name: json["name"],
        type: json["type"],
        date: DateTime.parse(json["date"]),
        location: json["location"],
        attendees: json["attendees"],
        theme: json["theme"],
        vendors: List<Vendor>.from(json["vendors"].map((x) => Vendor.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "type": type,
        "date": "${date.year.toString().padLeft(4, '0')}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}",
        "location": location,
        "attendees": attendees,
        "theme": theme,
        "vendors": List<dynamic>.from(vendors.map((x) => x.toJson())),
    };
}

class Vendor {
    int id;
    String name;
    String businessType;
    List<String> products;
    String theme;

    Vendor({
        required this.id,
        required this.name,
        required this.businessType,
        required this.products,
        required this.theme,
    });

    factory Vendor.fromJson(Map<String, dynamic> json) => Vendor(
        id: json["id"],
        name: json["name"],
        businessType: json["business_type"],
        products: List<String>.from(json["products"].map((x) => x)),
        theme: json["theme"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "business_type": businessType,
        "products": List<dynamic>.from(products.map((x) => x)),
        "theme": theme,
    };
}
