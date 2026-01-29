void main() async {

  print('Principio');

  try {
    final value = await httpGet('Hola mundo');
    print('${value}');
  } catch(error) {
    print('Tenemos un error: ${error}');
  }
  
  print('Fin');

}

// Una sunfción asincrona siempre va a retornar un Future
// y no puede empezar con un valor primitivo (Strings, int, etc).
Future<String> httpGet( String url ) async {

  await Future.delayed(const Duration( seconds: 1 ));
  return 'Valor de la petición';

}