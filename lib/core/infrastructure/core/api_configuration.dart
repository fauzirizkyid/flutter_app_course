import 'package:dio/dio.dart';
import 'package:flutter_app/core/infrastructure/common/dtos/api_response_model.dart';
import 'package:flutter_app/core/infrastructure/core/exceptions.dart';

class ApiConfiguration {
  const ApiConfiguration._();

  static BaseOptions dioBaseOptions(String baseUrl) => BaseOptions(
        connectTimeout: const Duration(seconds: 12),
        receiveTimeout: const Duration(seconds: 6),
        sendTimeout: const Duration(seconds: 6),
        headers: null,
        baseUrl: baseUrl,
      );

  static Future<ApiResponseModel> handleApiResponse(Response response) async {
    if (!ApiResponseModel.isFormatValid(response.data)) {
      return Future.error(ApiResponseNotValidException());
    }

    final model = ApiResponseModel.fromJson(response);

    if (model.data == null) {
      return Future.error(PreConditionedException(model));
    }

    return model;
  }

  static Future<ApiResponseModel> handleDioErrorResponse(DioException error) async {
    switch (error.type) {
      case DioExceptionType.badResponse:
        if (ApiResponseModel.isFormatValid(error.response!.data)) {
          return handleApiResponse(error.response!);
        }
        break;
      case DioExceptionType.connectionTimeout:
        return Future.error(TimeoutException());
      case DioExceptionType.sendTimeout:
        return Future.error(TimeoutException());
      case DioExceptionType.receiveTimeout:
        return Future.error(TimeoutException());
      default:
        return Future.error(TimeoutException());
    }
    return Future.error(TimeoutException());
  }
}
