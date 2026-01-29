void main() async {

  print('Inicio');

  try {
    final value = await httpGet('Hola mundo');
    print('Respuesta éxitosa: ${value}');
  } on Exception catch(error) {
    print('Tenemos una excepción: ${error}');
  } catch(error) {
    print('${error}');
  } finally {
    print('Fin del Try Cathc');
  }

  print('Final');

}

Future<String> httpGet( String ulr ) async {

  await Future.delayed(Duration( seconds: 1 ));
  throw Exception('Error en la petición');

}