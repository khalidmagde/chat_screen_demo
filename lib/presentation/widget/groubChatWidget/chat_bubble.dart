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
                width: widget.chatMessage.message == "" ? 200 : 320,
                height: widget.chatMessage.message == "" ? 198.1 : 140,
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
                                Text(
                                  widget.chatMessage.name!,
                                  style:
                                      TextStyle(color: Colors.orange.shade600),
                                ),
                                Text("admin",
                                    style:
                                        TextStyle(color: Colors.grey.shade400)),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              widget.chatMessage.message,
                              style: TextStyle(height: 1.2),
                              textAlign: TextAlign.start,
                            ),
                          ),
                          Container(
                              padding: const EdgeInsets.only(right: 5),
                              alignment: Alignment.bottomRight,
                              child: Text(
                                hDateTime,
                                style: TextStyle(color: Colors.grey.shade400),
                              )),
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
      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width / 3.1),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue.shade600,
                ),
                padding: const EdgeInsets.all(10),
                width: 220,
                height: 106,
                child: Column(
                  children: [
                    Text(
                      widget.chatMessage.message,
                      style: const TextStyle(color: Colors.white, height: 1.4),
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 10),
                      alignment: Alignment.bottomRight,
                      child: Text(
                        hDateTime,
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              builderAvatar(image: AppImages.menna),
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
            child: Image.asset(
              image,
              fit: BoxFit.fill,
              width: 35,
            ),
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
