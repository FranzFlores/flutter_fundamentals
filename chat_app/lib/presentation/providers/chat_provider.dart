import 'package:flutter/material.dart';
import 'package:chat_app/config/helpers/request.dart';
import 'package:chat_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  final ScrollController chatScrollController = ScrollController();
  final request = Request();

  List<Message> messageList = [
    Message(text: 'Hola ', person: Person.transmitter),
    Message(text: 'Funciona ', person: Person.transmitter),
  ];

  Future<void> sendMessage(String text) async {
    if (text.isEmpty) return;

    if (text.endsWith('?')) {
      receiverResponse();
    }

    final newMessage = Message(text: text, person: Person.transmitter);
    messageList.add(newMessage);

    notifyListeners();
    moveScrollToBottom();
  }

  Future<void> receiverResponse() async {
    final message = await request.getAnswer();
    messageList.add(message);

    notifyListeners();
    moveScrollToBottom();
  }

  Future<void> moveScrollToBottom() async {
    await Future.delayed(const Duration(microseconds: 100));

    chatScrollController.animateTo(
        chatScrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut);
  }
}
