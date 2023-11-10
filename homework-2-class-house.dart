void main(){
  List<House> houses = List.filled(3, House("", "", 0));

  House house1 = House("1", "house1", 1000000);
  House house2 = House("2", "house2", 5000000);
  House house3 = House("3", "house3", 10000000);

  houses[0] = house1;
  houses[1] = house2;
  houses[2] = house3;

  for(int i = 0; i < houses.length; i++){
    print("==> House ${i + 1} <==");
    print("id: ${houses[i].id}");
    print("name: ${houses[i].name}");
    print("price: ${houses[i].price}\n");
  }
}

class House{
  String? id;
  String? name;
  double? price;

  House(this.id, this.name, this.price);
}