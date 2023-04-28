import 'package:chat_app/domain/entities/message.dart';

class ResponseHttp {
  String answer;
  bool forced;
  String image;

  ResponseHttp(
      {required this.answer, required this.forced, required this.image});

  factory ResponseHttp.fromJsonMap(Map<String, dynamic> json) => ResponseHttp(
      answer: json['answer'], forced: json['forced'], image: json['image']);

  Message toMessageEntity() => Message(
      text: answer == 'yes' ? 'Si' : 'No',
      person: Person.receiver,
      imageUrl: image);
}
