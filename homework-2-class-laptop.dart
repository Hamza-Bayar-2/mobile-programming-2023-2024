void main(){
  Laptop laptop1 = Laptop();
  Laptop laptop2 = Laptop();
  Laptop laptop3 = Laptop();

  laptop1.id = "111";
  laptop1.name = "MSI";
  laptop1.ram = 16;

  laptop2.id = "222";
  laptop2.name = "ASUS";
  laptop2.ram = 8;

  laptop3.id = "333";
  laptop3.name = "HP";
  laptop3.ram = 32;

  
  print("==> Leptop 1 <==");
  print("id: ${laptop1.id}");
  print("name: ${laptop1.name}");
  print("ram: ${laptop1.ram}\n");

  print("==> Leptop 2 <==");
  print("id: ${laptop2.id}");
  print("name: ${laptop2.name}");
  print("ram: ${laptop2.ram}\n");

  print("==> Leptop 3 <==");
  print("id: ${laptop3.id}");
  print("name: ${laptop3.name}");
  print("ram: ${laptop3.ram}\n");
  
}

class Laptop{
  String? id;
  String? name;
  int? ram;
}