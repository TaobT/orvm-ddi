void main() {
  print(saludar());
  print(greetEveryone());
  print(agregarNumeros(5,5));
  print(addTwoNumbers(6,6));
  print(agregarDosNumerosOpcional(4));
  print(saludarPersona(message: 'Hola', name: 'Pancho'));
  print(saludarPersona(name: 'Pancho'));

}

String saludar() {
  return "Hola a todos";
}

//lambda
String greetEveryone() => "Hello everyone";

int agregarNumeros(int a, int b){
  return a + b;
}

//TO DO: Covertir la funcion a lambda, se dee llamar "addTwoNumbers"
int addTwoNumbers(int a, int b ) => a + b;

int agregarDosNumerosOpcional(int a, [int? b /*int b = 0*/]){
  //b = b ?? 0;
  b ??= 0;
  return a + b;
}

String saludarPersona({required String name, String? message = 'Hola'}){
  return "$message, $name";
}