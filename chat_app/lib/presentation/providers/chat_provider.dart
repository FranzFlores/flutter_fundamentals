import 'package:flutter/material.dart';
import 'package:chat_app/config/helpers/request.dart';
import 'package:chat_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  final ScrollController chatScrollController = ScrollController();
  final request = Request();

  // Listado de mensajes a mostrar 
  List<Message> messageList = [
    Message(text: 'Primer mensaje ', person: Person.transmitter),
    Message(text: 'Segundo mensaje ', person: Person.transmitter),
  ];

  // Enviar mensaje 
  Future<void> sendMessage(String text) async {
    // En caso de que no se envíe texto no se hará ninguna acción
    if (text.isEmpty) return;

    // Valida si el mensaje termina en ?. Se responderá un mensaje
    if (text.endsWith('?')) {
      receiverResponse();
    }

    // Crear un nuevo mensaje de la persona con la que se está chateando
    final newMessage = Message(text: text, person: Person.transmitter);
    messageList.add(newMessage);

    // Actualizar el listado de mensajes
    notifyListeners();

    // Mover el scroll al final de los mensajes
    moveScrollToBottom();
  }

  // Reponder mensaje 
  Future<void> receiverResponse() async {
    final message = await request.getAnswer();
    messageList.add(message);

    notifyListeners();
    moveScrollToBottom();
  }

  // Mover el scroll al final de la lista de mensajes (ListView)
  Future<void> moveScrollToBottom() async {
    // Timer => permite simular una petición http 
    await Future.delayed(const Duration(microseconds: 100));

    // Efecto de animación para que el mensaje de muestre de forma suave y agradable
    chatScrollController.animateTo(
        chatScrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut);
  }
}
