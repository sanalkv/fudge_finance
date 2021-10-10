import 'package:dio/dio.dart';
import 'package:fudge_financial/core/helpers/error_handler.dart';
import 'package:fudge_financial/core/model/user_model.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: 'https://jsonplaceholder.typicode.com')
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  static ApiService init() {
    final dio = Dio()..interceptors.add(PrettyDioLogger(requestBody: true));
    dio.interceptors.add(_interceptorsWrapper());
    return ApiService(dio);
  }

  @GET('/users')
  Future<List<UserModel>> getUserList();

  
}

InterceptorsWrapper _interceptorsWrapper() {
  return InterceptorsWrapper(
   
    onError: (e, handler) {
      final String errorString = errorHandler(e);
      DioError error = DioError(requestOptions: e.requestOptions, response: e.response, type: e.type, error: errorString);
      handler.next(error);
    },
  );
}
