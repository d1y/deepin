import 'package:deepin/config/const.dart';
import 'package:dio/dio.dart';

BaseOptions _options = new BaseOptions(
  baseUrl: DeepinApi.BaseApi,
  connectTimeout: 5000,
  receiveTimeout: 3000,
  responseType: ResponseType.json,
);

Dio dio = new Dio(_options);
