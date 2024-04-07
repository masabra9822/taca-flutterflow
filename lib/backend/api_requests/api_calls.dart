import 'dart:convert';
import 'dart:typed_data';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Taca Group Code

class TacaGroup {
  static String baseUrl = 'https://dtime.es/tacapp/';
  static Map<String, String> headers = {};
  static InsertarUsuarioCall insertarUsuarioCall = InsertarUsuarioCall();
}

class InsertarUsuarioCall {
  Future<ApiCallResponse> call({
    String? nuevoTelefono = '',
    String? nuevoCodigo = '',
    String? nuevoToken = '',
    String? accion = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'insertarUsuario',
      apiUrl: '${TacaGroup.baseUrl}insertarUsuario.php',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'nuevoTelefono': nuevoTelefono,
        'nuevoCodigo': nuevoCodigo,
        'nuevoToken': nuevoToken,
        'accion': accion,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? mensaje(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  String? id(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.usuarioregistrado[:].idUsuario''',
      ));
  String? codigo(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.usuarioregistrado[:].codigoUsuario''',
      ));
  String? telefono(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.usuarioregistrado[:].telefonoUsuario''',
      ));
  String? token(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.usuarioregistrado[:].tokenUsuario''',
      ));
  String? regalo(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.usuarioregistrado[:].regaloUsuario''',
      ));
  String? pro(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.usuarioregistrado[:].proUsuario''',
      ));
  bool? respuesta(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.success''',
      ));
}

/// End Taca Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
