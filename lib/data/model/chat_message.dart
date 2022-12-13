import 'package:chat_screen/presentation/screen/group_chat_screen.dart';
import 'package:flutter/material.dart';

class ChatMessage {
  String message;
  MessageType type;
  String? name;
  Image? image;

  ChatMessage(
      {required this.message, required this.type, this.name, this.image});
}
