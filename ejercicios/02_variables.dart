void main() {
  final String game = 'Sekiro';
  final int stars = 4;
  final bool isRPG = false;
  final List<String> types = ['Adventure', 'RPG'];
  final cover = <String>['sekiro/front.png','sekiro/back.png'];
  
  //"dynamic" puede recibir cualquier tipo de dato o nulo (null), un poco parecido a "var" en C#
  dynamic data = null;
  data = true;
  data = [1,2,3,4,5];
  data = {1,2,3,4,5};
  data = () => true;
  data = null;
  
  print("""
  $game
  $stars
  $isRPG
  $types
  $cover
  """);
}