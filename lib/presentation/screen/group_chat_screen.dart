import 'package:chat_screen/presentation/widget/appBarWidgets/chat_daetail_page_appbar.dart';
import 'package:chat_screen/presentation/widget/groubChatWidget/custom_show_chat_list_widget.dart';
import 'package:chat_screen/presentation/widget/groubChatWidget/custom_textfield_widget.dart';
import 'package:flutter/material.dart';

enum MessageType {
  Sender,
  Receiver,
}

class GroupChatScreen extends StatefulWidget {
  GroupChatScreen({
    super.key,
  });

  @override
  State<GroupChatScreen> createState() => _GroupChatScreenState();
}

class _GroupChatScreenState extends State<GroupChatScreen> {
  List<String> imageList = [
    "assets/images/darleneSteward.png",
    "assets/images/albertBell.png",
    "assets/images/dwightWilson.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ChatDetailPageAppBar(),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const CustomShowChatList(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ...List.generate(
                        3,
                        (index) => AnimatedContainer(
                            duration: const Duration(milliseconds: 900),
                            margin: const EdgeInsets.only(right: 5),
                            width: 6,
                            height: 6,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade700,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: ListView.builder(
                              itemCount: imageList.length,
                              itemBuilder: (context, index) {
                                return Container();
                              },
                            )),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      ...List.generate(
                        3,
                        (index) => AnimatedContainer(
                            duration: const Duration(milliseconds: 900),
                            width: 18,
                            height: 18,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: ListView.builder(
                              itemCount: imageList.length,
                              itemBuilder: (context, index) {
                                return Image.asset(imageList[index]);
                              },
                            )),
                      ),
                      SizedBox(
                        width: 1,
                      ),
                      Text("+2 others are typing")
                    ],
                  ),
                ],
              ),
            ),
          ),
          const CustomTextField(),
        ],
      ),
    );
  }
}
