void main(){
  Cat cat = Cat(id: "123", name: "Mıncır", color: "siyah", hairy: true);

  print("\n==> Kedinin Özellikleri <==");
  print("id: ${cat.id}");
  print("name: ${cat.name}");
  print("color: ${cat.color}");
  print("hairy: ${cat.hairy}");
}

class Animal{
  String? id;
  String? name;
  String? color;


  Animal({this.id, this.name, this.color});
}

class Cat extends Animal{
  bool? hairy;

  Cat({super.id, super.name, super.color, this.hairy});
}