import 'package:flutter/material.dart';

class MessageFielddBox extends StatelessWidget {
  const MessageFielddBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();
    final focusNode = FocusNode();

    final outlineInputBorder = UnderlineInputBorder(
        borderSide: const BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.circular(40));

    return TextFormField(
      focusNode: focusNode,
      controller: textController,
      onFieldSubmitted: (value) {
        textController.clear();
        focusNode.requestFocus();
      },
      decoration: InputDecoration(
          hintText: 'Ingresar mensaje',
          focusedBorder: outlineInputBorder,
          enabledBorder: outlineInputBorder,
          filled: true,
          suffixIcon: IconButton(
              icon: const Icon(Icons.send_outlined),
              onPressed: () {
                // final textValue = textController.value.text;
              })),
    );
  }
}
