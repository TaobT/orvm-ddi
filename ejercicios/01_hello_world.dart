void main() {
  String name = 'Jose';
  late final int version;
  const String myName = 'Andres';
  
  version = 12;
  
  print("Hola $name");
  print("Hola ${name.toUpperCase()}");
  print("${1+1}");
  print("No. de version: ${version}");
  print("Constantes: $myName");
}