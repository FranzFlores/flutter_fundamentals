import 'package:flutter/material.dart';

class ReceiverMessageBubble extends StatelessWidget {
  const ReceiverMessageBubble({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
              color: colors.secondary, borderRadius: BorderRadius.circular(20)),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text('Hola mundo', style: TextStyle(color: Colors.white)),
          ),
        ),
        const SizedBox(height: 5),
        _ImageBubble(),
        const SizedBox(height: 10),
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Dimensiones del dispositivo
    final size = MediaQuery.of(context).size;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
          'https://yesno.wtf/assets/yes/2-5df1b403f2654fa77559af1bf2332d7a.gif',
          width: size.width * 0.7,
          height: 150,
          fit: BoxFit.cover, loadingBuilder: (BuildContext context,
              Widget child, ImageChunkEvent? loadingProgress) {
        if (loadingProgress == null) {
          return child;
        }
        return Container(
            width: size.width * 0.7,
            height: 150,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: const Text('Enviando mensaje'));
      }),
    );
  }
}
