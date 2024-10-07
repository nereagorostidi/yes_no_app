import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> message = [
    Message(text: 'Hola papi', fromWho: FromWho.me),
    Message(text: 'Me echas de menos?', fromWho: FromWho.me),
  ];

  Future<void> sendMessage(String text) async {
    //TODO implementar método
  }
}
