import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start RPC Group Code

class RpcGroup {
  static String getBaseUrl() =>
      'https://oxwurygnhgaududxrjhe.supabase.co/rest/v1/rpc/';
  static Map<String, String> headers = {};
  static InsertLikeCall insertLikeCall = InsertLikeCall();
  static RemoveLikeCall removeLikeCall = RemoveLikeCall();
}

class InsertLikeCall {
  Future<ApiCallResponse> call({
    int? noticiaid,
    String? userid = '',
  }) async {
    final baseUrl = RpcGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
"noticiaid":${noticiaid},
"userid":"${escapeStringForJson(userid)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Insert Like',
      apiUrl: '${baseUrl}insert_like',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im94d3VyeWduaGdhdWR1ZHhyamhlIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDg2OTQ4MDEsImV4cCI6MjA2NDI3MDgwMX0.XssmBxUElzOFh43pTgeLzdLj2k4FohXCFKAQPXWeU0k',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im94d3VyeWduaGdhdWR1ZHhyamhlIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTc0ODY5NDgwMSwiZXhwIjoyMDY0MjcwODAxfQ.CtnmsHiel9IqKiTQNfpBgtEaUzsRQTHOYYqPh5R8yeM',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RemoveLikeCall {
  Future<ApiCallResponse> call({
    int? noticiaid,
    String? userid = '',
  }) async {
    final baseUrl = RpcGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
"noticiaid":${noticiaid},
"userid":"${escapeStringForJson(userid)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Remove  Like',
      apiUrl: '${baseUrl}remove_like',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im94d3VyeWduaGdhdWR1ZHhyamhlIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDg2OTQ4MDEsImV4cCI6MjA2NDI3MDgwMX0.XssmBxUElzOFh43pTgeLzdLj2k4FohXCFKAQPXWeU0k',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im94d3VyeWduaGdhdWR1ZHhyamhlIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTc0ODY5NDgwMSwiZXhwIjoyMDY0MjcwODAxfQ.CtnmsHiel9IqKiTQNfpBgtEaUzsRQTHOYYqPh5R8yeM',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End RPC Group Code

class GetCategoriasCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'getCategorias',
      apiUrl: 'https://www.fatoreal.com.br/wp-json/wp/v2/categorias',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? data(dynamic response) => (getJsonField(
        response,
        r'''$[:].date''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? alteracao(dynamic response) => (getJsonField(
        response,
        r'''$[:].modified''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? status(dynamic response) => (getJsonField(
        response,
        r'''$[:].status''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? tipo(dynamic response) => (getJsonField(
        response,
        r'''$[:].type''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? link(dynamic response) => (getJsonField(
        response,
        r'''$[:].link''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? titulo(dynamic response) => (getJsonField(
        response,
        r'''$[:].title.rendered''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? conteudo(dynamic response) => (getJsonField(
        response,
        r'''$[:].content.rendered''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? autor(dynamic response) => (getJsonField(
        response,
        r'''$[:].author''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List? categorias(dynamic response) => getJsonField(
        response,
        r'''$[:].categories''',
        true,
      ) as List?;
  static List? tag(dynamic response) => getJsonField(
        response,
        r'''$[:].tags''',
        true,
      ) as List?;
}

class GetPostsCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'getPosts',
      apiUrl: 'https://www.fatoreal.com.br/wp-json/wp/v2/posts',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? data(dynamic response) => (getJsonField(
        response,
        r'''$[:].date''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? alteracao(dynamic response) => (getJsonField(
        response,
        r'''$[:].modified''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? status(dynamic response) => (getJsonField(
        response,
        r'''$[:].status''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? tipo(dynamic response) => (getJsonField(
        response,
        r'''$[:].type''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? link(dynamic response) => (getJsonField(
        response,
        r'''$[:].link''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? titulo(dynamic response) => (getJsonField(
        response,
        r'''$[:].title.rendered''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? conteudo(dynamic response) => (getJsonField(
        response,
        r'''$[:].content.rendered''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? autor(dynamic response) => (getJsonField(
        response,
        r'''$[:].author''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List? categorias(dynamic response) => getJsonField(
        response,
        r'''$[:].categories''',
        true,
      ) as List?;
  static List? tag(dynamic response) => getJsonField(
        response,
        r'''$[:].tags''',
        true,
      ) as List?;
}

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

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
