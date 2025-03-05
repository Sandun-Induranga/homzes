class Property {
  final String id;
  final String title;
  final String image;
  final String location;
  final int price;
  final int beds;
  final int baths;

  Property({
    required this.id,
    required this.title,
    required this.image,
    required this.location,
    required this.price,
    required this.beds,
    required this.baths,
  });

  factory Property.fromFirestore(Map<String, dynamic> data) {
    return Property(
      id: data['id'] ?? '',
      title: data['title'] ?? '',
      image: data['image'] ?? '',
      location: data['location'] ?? '',
      price: (data['price'] ?? 0),
      beds: data['beds'] ?? 0,
      baths: data['baths'] ?? 0,
    );
  }
}
