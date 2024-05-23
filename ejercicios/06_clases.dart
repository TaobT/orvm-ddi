void main() {
  final Hero wolverine = new Hero(name: 'wolverine', power: 'otro');
  
  print(wolverine);
  print(wolverine.name);
  print(wolverine.power);
}

class Hero {
  String? name;
  String? power;
  
  Hero({
    required this.name,
    this.power = 'Sin Poder'
  });
  
  //Hero(this.name, this.power);
  
 /* Hero(String pName, String pPower){
    this.name = pName;
    this.power = pPower;
  }*/
  
  @override
  String toString(){
    return "$name - $power";
  }
}