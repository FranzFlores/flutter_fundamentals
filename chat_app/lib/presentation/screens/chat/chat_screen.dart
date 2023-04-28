import 'package:chat_app/presentation/widgets/chat/message_bubble.dart';
import 'package:chat_app/presentation/widgets/chat/receiver_message_bubble.dart';
import 'package:chat_app/presentation/widgets/shared/message_field_box.dart';
import 'package:flutter/material.dart';

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
                  'https://styles.redditmedia.com/t5_2sa78/styles/communityIcon_209adg6qsl371.jpg?width=256&s=574e4424ca6ee042d4913f24cea7562b289bf3ec')),
        ),
        title: const Text('Anne Hathaway'),
      ),
      body: const _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  const _ChatView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(children: [
            Expanded(child: ListView.builder(itemBuilder: (context, index) {
              return (index % 2 == 0)
                  ? const ReceiverMessageBubble()
                  : const MessageBubble();
            })),

            //Cajar de texto
            const MessageFielddBox()
          ])),
    );
  }
}
