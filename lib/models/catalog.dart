class CatalogModel {
  static List<Item> items;
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({this.id, this.name, this.desc, this.price, this.color, this.image});

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map['id'],
      name: map['name'],
      desc: map['desc'],
      color: map['color'],
      price: map['price'],
      image: map['image'],
    );
  }

  toMap() => {
        "id": id,
        "name": name,
        "desc": desc,
        "color": color,
        "price": price,
        "image": image,
      };
}
