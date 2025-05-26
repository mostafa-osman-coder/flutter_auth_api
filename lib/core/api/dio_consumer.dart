import 'package:api_with_flutter/core/api/api_consumer.dart';
import 'package:api_with_flutter/core/errors/exception.dart';
import 'package:dio/dio.dart';

class DioConsumer extends ApiConsumer {
  final Dio dio;

  DioConsumer({required this.dio});
  @override
  Future delete(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final response = await dio.delete(
        path,
        data: data,
        queryParameters: queryParameters,
      );
      return response.data;
    } on DioException catch (e) {
      switch (e.type) {
        case DioExceptionType.connectionTimeout:
          throw ServerException();

        case DioExceptionType.sendTimeout:
        case DioExceptionType.receiveTimeout:
        case DioExceptionType.badCertificate:
        case DioExceptionType.cancel:
        case DioExceptionType.connectionError:
        case DioExceptionType.unknown:
        case DioExceptionType.badResponse:
      }
    }

    @override
    Future get(
      String path, {
      Object? data,
      Map<String, dynamic>? queryParameters,
    }) {
      throw UnimplementedError();
    }

    @override
    Future patch(
      String path, {
      Object? data,
      Map<String, dynamic>? queryParameters,
    }) {
      throw UnimplementedError();
    }

    @override
    Future post(
      String path, {
      Object? data,
      Map<String, dynamic>? queryParameters,
    }) {
      throw UnimplementedError();
    }
  }
}
