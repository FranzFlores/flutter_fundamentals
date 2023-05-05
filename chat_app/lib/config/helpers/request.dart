import 'package:dio/dio.dart';
import 'package:chat_app/infrastucture/models/response_http.dart';
import 'package:chat_app/domain/entities/message.dart';

// Clase que se encarga de consumir la respuesta http de un recurso externo
class Request {
  final _dio = Dio();

  Future<Message> getAnswer() async {
    final result = await _dio.get('https://yesno.wtf/api');

    final response = ResponseHttp.fromJsonMap(result.data);
    return response.toMessageEntity();
  }
}
