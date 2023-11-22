class EventData {
  List<Event> events;

  EventData({required this.events});

  factory EventData.fromJson(Map<String, dynamic> json) {
    List<Event> eventsList = List<Event>.from(
      json["events"].map((eventJson) => Event.fromJson(eventJson)),
    );

    return EventData(events: eventsList);
  }
}

class Event {
  int id;
  String name;
  String type;
  String date;
  String location;
  String description;
  int attendees;
  String image;
  List<Vendor> vendors;

  Event({
    required this.id,
    required this.name,
    required this.type,
    required this.date,
    required this.location,
    required this.description,
    required this.attendees,
    required this.image,
    required this.vendors,
  });

  factory Event.fromJson(Map<String, dynamic> json) {
    List<Vendor> vendorsList = List<Vendor>.from(
      json["vendors"].map((vendorJson) => Vendor.fromJson(vendorJson)),
    );

    return Event(
      id: json["id"],
      name: json["name"],
      type: json["type"],
      date: json["date"],
      location: json["location"],
      description: json['description'],
      attendees: json["attendees"],
      image: json["image"],
      vendors: vendorsList,
    );
  }
}

class Vendor {
  int id;
  String name;
  String businessType;
  List<String> products;
  String image;

  Vendor({
    required this.id,
    required this.name,
    required this.businessType,
    required this.products,
    required this.image,
  });

  factory Vendor.fromJson(Map<String, dynamic> json) {
    List<String> productsList = List<String>.from(json["products"]);

    return Vendor(
      id: json["id"],
      name: json["name"],
      businessType: json["business_type"],
      products: productsList,
      image: json["image"],
    );
  }
}
