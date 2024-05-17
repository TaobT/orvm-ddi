void main() {
  final Map<String, dynamic> game = {
    'name' : 'Sekiro',
    'stars' : 5,
    'isRPG' : false,
    'types' : ['Adventure', 'RPG'],
    'cover': {
      1: 'sekiro/front.png',
      2: 'sekiro/back.png'
    }
    };
  
  print(game);
  print('Nombre: ${game['name']} ');
  print('Cover: ${game['cover']} ');
  print('Cover Back: ${game['cover'][2]}');
  print('Cover Front: ${game['cover'][1]}');
}
