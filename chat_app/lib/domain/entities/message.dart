enum Person { transmitter, receiver }

class Message {
  final String text;
  final String? imageUrl;
  final Person person;

  Message({required this.text, this.imageUrl, required this.person});
}
