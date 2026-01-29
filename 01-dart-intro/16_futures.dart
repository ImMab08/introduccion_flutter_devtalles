void main() {

  print('Principio');

  httpGet('Hola mundo')
    .then( (value) {
      print(value);
    })
    .catchError( (error) {
      print('Error: ${error}');
    })
  ;

  print('Final');

}

Future<String> httpGet(String url) {

  return Future.delayed( const Duration( seconds: 3 ), () {
    throw 'Error en la respuesta';
    //return 'Respuesta de la petición'; 
  });

}