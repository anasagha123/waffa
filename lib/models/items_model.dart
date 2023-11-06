class Items {
  String? img;
  String? name;
  String? price;

  Items({required this.img, required this.name, required this.price});

  Items.fromJson(Map<String, dynamic> json) {
    img = json[""];
    name = json[""];
    price = json[""];
  }
}
