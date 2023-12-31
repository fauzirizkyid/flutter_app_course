import 'package:flutter_app/core/infrastructure/common/dtos/api_response_model.dart';

class ApiResponseException implements Exception {
  final ApiResponseModel model;
  final String message;

  ApiResponseException(this.message, this.model);
  @override
  String toString() => "$message ${model.errorMsg}";
}

class SharedPreferencesException extends DefaultException {
  SharedPreferencesException([String? message])
      : super(message ?? "Shared Preferences Error");
}

class BadRequestException extends ApiResponseException {
  BadRequestException(ApiResponseModel model) : super("", model);
}

class UnauthorizedException extends ApiResponseException {
  UnauthorizedException(ApiResponseModel model) : super("", model);
}

class NotFoundException extends ApiResponseException {
  NotFoundException(ApiResponseModel model) : super("", model);
}

class ForbiddenException extends ApiResponseException {
  ForbiddenException(ApiResponseModel model) : super("", model);
}

class PreConditionedException extends ApiResponseException {
  PreConditionedException(ApiResponseModel model) : super("Error: ", model);
  @override
  String toString() => model.errorMsg;
}

class RequestRateLimitException extends ApiResponseException {
  RequestRateLimitException(ApiResponseModel model) : super("", model);
}

class UnprocessableEntityException extends ApiResponseException {
  UnprocessableEntityException(ApiResponseModel model)
      : super("Unprocessable Entity Error:", model);
}

class ServerErrorException extends ApiResponseException {
  ServerErrorException(ApiResponseModel model) : super("", model);
}

class DefaultException implements Exception {
  final String? _message;

  DefaultException(this._message);
  @override
  String toString() => _message ?? "No internet connection";
}

class NoInternetException extends DefaultException {
  NoInternetException() : super('No internet connection');
}

class UnknownException extends DefaultException {
  UnknownException(e)
      : super(e != null
            ? e.toString()
            : 'Unknown error, please report this to us');
}

class ConnectTimeoutException extends DefaultException {
  ConnectTimeoutException() : super('Connection timeout, please try again');
}

class SendTimeoutException extends DefaultException {
  SendTimeoutException() : super('Sended timeout, please try again');
}

class ReceiveTimeoutException extends DefaultException {
  ReceiveTimeoutException() : super('Receive timeout, please try again');
}

class TimeoutException extends DefaultException {
  TimeoutException()
      : super('Problem with connection timeout, please try again');
}

class ApiResponseNotValidException extends DefaultException {
  ApiResponseNotValidException()
      : super('Server error, please report this to us');
}

class ServerException implements Exception {
  final int? statusCode;
  final String? message;

  ServerException({required this.statusCode, this.message});
  @override
  String toString() => message ?? 'Server exception with code: $statusCode';
}
