import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_app/core/config/constants/string_constant.dart';
import 'package:flutter_app/core/infrastructure/common/dtos/api_response_model.dart';
import 'package:flutter_app/core/infrastructure/core/api_configuration.dart';
import 'package:flutter_app/core/infrastructure/core/exceptions.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class ApiHelper {
  final Dio _dio;
  ApiHelper(
    this._dio,
  );
  Future<ApiResponseModel> get({
    required String path,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    try {
      Map<String, dynamic> _queryParameters = {
        "api-key": StringConstants.apiKey,
      };

      if (queryParameters != null) {
        _queryParameters.addAll(queryParameters);
      }

      print("_queryParameters: $path");
      print("_queryParameters: $_queryParameters");

      final response = await _dio.get(
        path,
        queryParameters: _queryParameters,
        options: options,
      );

      print("_queryParameters: $response");
      return ApiConfiguration.handleApiResponse(response);
    } on SocketException {
      return Future.error(NoInternetException());
    } on DioException catch (e) {
      return ApiConfiguration.handleDioErrorResponse(e);
    } catch (e) {
      return Future.error(UnknownException(e));
    }
  }
}
