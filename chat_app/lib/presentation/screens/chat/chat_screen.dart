import 'package:chat_app/domain/entities/message.dart';
import 'package:chat_app/presentation/providers/chat_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:chat_app/presentation/widgets/chat/message_bubble.dart';
import 'package:chat_app/presentation/widgets/chat/receiver_message_bubble.dart';
import 'package:chat_app/presentation/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://styles.redditmedia.com/t5_2sa78/styles/communityIcon_209adg6qsl371.jpg?width=256&s=574e4424ca6ee042d4913f24cea7562b289bf3ec'
                )
              ),
        ),
        title: const Text('Anne Hathaway'),
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final chatProvider = context.watch<ChatProvider>();

    return SafeArea(
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Column(children: [
            Expanded(
                child: ListView.builder(
                    controller: chatProvider.chatScrollController,
                    itemCount: chatProvider.messageList.length,
                    itemBuilder: (context, index) {
                      
                      final message = chatProvider.messageList[index];

                      return (message.person == Person.transmitter)
                          ? MessageBubble(message: message)
                          : ReceiverMessageBubble(message: message);
                })
              ),

            //Cajar de texto
            MessageFielddBox(
                onValue: ((value) => chatProvider.sendMessage(value)))
          ])),
    );
  }
}
