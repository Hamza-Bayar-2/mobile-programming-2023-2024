void main() {
  List<Camera> cameras = List.filled(3, Camera("", "", "", 0));

  Camera camera1 = Camera("1", "Nikon", "Black", 599.99);
  Camera camera2 = Camera("2", "Canon", "Silver", 699.99);
  Camera camera3 = Camera("3", "Sony", "Red", 799.99);

  cameras[0] = camera1;
  cameras[1] = camera2;
  cameras[2] = camera3;

  for(int i = 0; i < cameras.length; i++){
    print("==> Camera ${i + 1} <==");
    print("id: ${cameras[i].id}");
    print("brand: ${cameras[i].brand}");
    print("color: ${cameras[i].color}");
    print("price: ${cameras[i].price}\n");
  }
}

class Camera {
  String _id;
  String _brand;
  String _color;
  double _price;

  String get id => _id;

  set id(String value) {
    _id = value;
  }

  String get brand => _brand;

  set brand(String value) {
    _brand = value;
  }

  String get color => _color;

  set color(String value) {
    _color = value;
  }

  double get price => _price;

  set price(double value) {
    _price = value;
  }

  Camera(this._id, this._brand, this._color, this._price);

}