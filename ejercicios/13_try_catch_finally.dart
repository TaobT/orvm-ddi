// Futures
// Son un acuerdo de que en el futuro
// tendras un valor para ser usado

void main() async {
  print("Inicio del programa");
  try{
    final value = await httpGet("http://");
    print(value);
  } on Exception catch(err) {
    print("Exception: $err");
  } catch (err){
    print("Error General: $err");
  } finally {
    print("Entra al bloque finally");
  }
  print("Fin del programa");
  
}

Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 2));
  
  throw Exception("No hay parametros en la URL");
  //throw "Error de la petición";
  // return 'respuesta de la petición HTTP';
}