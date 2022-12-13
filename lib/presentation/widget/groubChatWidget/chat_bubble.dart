import 'package:chat_screen/core/constants/appimages.dart';
import 'package:chat_screen/data/model/chat_message.dart';
import 'package:chat_screen/presentation/screen/group_chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

// ignore: must_be_immutable
class ChatBubble extends StatefulWidget {
  ChatMessage chatMessage;
  ChatBubble({required this.chatMessage, super.key});

  @override
  State<ChatBubble> createState() => _ChatBubbleState();
}

class _ChatBubbleState extends State<ChatBubble> {
  final hDateTime = DateFormat('hh:mm').format(DateTime.now());
  @override
  Widget build(BuildContext context) {
    return widget.chatMessage.type == MessageType.Sender
        ? builderSender()
        : builderReceiver();
  }

  Widget builderSender() {
    return Column(
      children: [
        Row(
          children: [
            widget.chatMessage.message == ""
                ? Container(
                    padding: const EdgeInsets.only(top: 100),
                    child: builderAvatar(image: AppImages.mikeWazowski))
                : Container(
                    padding: const EdgeInsets.only(left: 40),
                  ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, right: 8.0, bottom: 8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.shade200,
                ),
                width: widget.chatMessage.message == "" ? 200 : 300,
                height: widget.chatMessage.message == "" ? 198.1 : 130,
                child: widget.chatMessage.type == MessageType.Receiver ||
                        widget.chatMessage.message == ""
                    ? Column(
                        children: [
                          Image.asset(AppImages.recOne),
                          Row(
                            children: [
                              Image.asset(AppImages.recTwo),
                              Image.asset(AppImages.recThree),
                            ],
                          )
                        ],
                      )
                    : Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(widget.chatMessage.name!),
                                const Text("admin"),
                              ],
                            ),
                          ),
                          Text(widget.chatMessage.message),
                          Container(
                              padding: const EdgeInsets.only(right: 5),
                              alignment: Alignment.bottomRight,
                              child: Text(hDateTime)),
                        ],
                      ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget builderReceiver() {
    return Container(
      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width / 2.6),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue,
                ),
                padding: const EdgeInsets.only(top: 16),
                width: 200,
                height: 100,
                child: Column(
                  children: [
                    Text(
                      widget.chatMessage.message,
                      style: const TextStyle(color: Colors.white),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      alignment: Alignment.bottomRight,
                      child: Text(
                        hDateTime,
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              builderAvatar(image: AppImages.albertBell),
            ],
          ),
        ],
      ),
    );
  }

  Widget builderAvatar({required String image}) {
    return Container(
      padding: const EdgeInsets.only(top: 70),
      child: Stack(
        children: [
          CircleAvatar(
            backgroundColor: Colors.transparent,
            child: Image.asset(image),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              height: 10,
              width: 10,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  width: 2,
                  color: Colors.white,
                ),
                color: Colors.green,
              ),
            ),
          ),
        ],
      ),
    );
  }
}





/* Container(
      padding: EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 10),
      child: Align(
        alignment: widget.chatMessage.type == MessageType.Receiver
            ? Alignment.topLeft
            : Alignment.topRight,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: widget.chatMessage.type == MessageType.Receiver
                ? Colors.grey.shade400
                : Colors.white,
          ),
          padding: EdgeInsets.all(16),
          child: widget.chatMessage.type == MessageType.Sender
              ? Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(widget.chatMessage.name!),
                        Text("admin"),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(widget.chatMessage.message),
                  ],
                )
              : Column(
                  children: [
                    SizedBox(
                      height: 8,
                    ),
                    Text(widget.chatMessage.message),
                  ],
                ),
        ),
      ),
    ); */
  