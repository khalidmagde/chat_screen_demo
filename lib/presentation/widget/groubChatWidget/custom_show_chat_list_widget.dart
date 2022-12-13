import 'package:chat_screen/data/static/static.dart';
import 'package:chat_screen/presentation/widget/groubChatWidget/chat_bubble.dart';
import 'package:flutter/material.dart';

class CustomShowChatList extends StatefulWidget {
  const CustomShowChatList({super.key});

  @override
  State<CustomShowChatList> createState() => _CustomShowChatListState();
}

class _CustomShowChatListState extends State<CustomShowChatList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: chatMessage.length,
      shrinkWrap: true,
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, i) {
        return ChatBubble(chatMessage: chatMessage[i]);
      },
    );
  }
}
