import 'dart:convert';
import 'dart:io';
import 'package:arccitecture_example/core/base/model/base_model.dart';
import 'package:dio/dio.dart';

class Network {
  late final Dio _dio;
  late final BaseOptions _baseOptions;
  final String baseUrl = 'http://hp-api.herokuapp.com/api/';
  static Network? _instance;
  static Network get instance {
    _instance ??= Network._init();
    return _instance!;
  }

  Network._init() {
    _baseOptions = BaseOptions(
      baseUrl: baseUrl,
    );
    _dio = Dio(_baseOptions);
  }

  Future<R?> get<R, T extends BaseModel<T>>(
      {required String endPoint, Map? headers, required T model}) async {
    var response = await _dio.get(endPoint);

    if (response.statusCode == HttpStatus.ok) {
      var data =
          response.data is String ? json.decode(response.data) : response.data;
      if (data is List ) {
        return data.map((e) => model.fromJson(e)).toList() as R;
      } else if (data is Map ) {
        return model.fromJson(data) as R;
      }
      return null;
    } else {
      return null;
    }
  }
}
