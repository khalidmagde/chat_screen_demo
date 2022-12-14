import 'package:chat_screen/data/model/chat_model.dart';
import 'package:chat_screen/data/static/static.dart';
import 'package:flutter/material.dart';

class PinnedChat extends StatefulWidget {
  ChatModel pinnedChatModel;
  PinnedChat({super.key, required this.pinnedChatModel});

  @override
  State<PinnedChat> createState() => _PinnedChatState();
}

class _PinnedChatState extends State<PinnedChat> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: widget.pinnedChatModel.color,
                ),
                height: 100,
                width: 160,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 8, top: 8),
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image(
                                  image:
                                      AssetImage(widget.pinnedChatModel.image!),
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
                                      color: widget.pinnedChatModel.name ==
                                              pinnedChatModel[3].name
                                          ? Colors.green
                                          : Colors.yellow,
                                    ),
                                  ))
                            ],
                          ),
                        ),
                        Container(
                            padding: EdgeInsets.all(8),
                            child: Text(widget.pinnedChatModel.name!)),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(12),
                      child: Text(
                        widget.pinnedChatModel.body!,
                        style: TextStyle(
                            color: widget.pinnedChatModel.color ==
                                    Colors.blue.shade100
                                ? Colors.black
                                : Colors.grey.shade500),
                        maxLines: 1,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
