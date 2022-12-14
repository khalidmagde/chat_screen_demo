import 'package:chat_screen/core/constants/appimages.dart';
import 'package:chat_screen/data/static/static.dart';
import 'package:chat_screen/presentation/screen/group_chat_screen.dart';
import 'package:chat_screen/presentation/widget/appBarWidgets/custom_appbar_recent.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class RecentChat extends StatefulWidget {
  const RecentChat({super.key});

  @override
  State<RecentChat> createState() => _RecentChatState();
}

final hDateTime = DateFormat('hh:mm').format(DateTime.now());
final dDateTime = DateFormat('EEE').format(DateTime.now());

class _RecentChatState extends State<RecentChat> {
  final double minHieght = 460;
  @override
  Widget build(BuildContext context) {
    return SlidingUpPanel(
      maxHeight: double.maxFinite,
      minHeight: minHieght,
      panelBuilder: (controller) => Scaffold(
        appBar: CustomAppBarRecent(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 7.5),
                child: Row(
                  children: [
                    categoryBuilder(text: "All chats", color: Colors.blue),
                    categoryBuilder(text: "Personal"),
                    categoryBuilder(text: "Work"),
                    categoryBuilder(text: "Groubs"),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              recentChatBuilder(
                  image: AppImages.darleneSteward,
                  name: "Darlene Steward",
                  body: "${recentChatModel[0].body}"),
              InkWell(
                child: recentChatBuilder(
                    image: AppImages.fullsnackDesigners,
                    name: "Fullsnack Designers",
                    body: "${recentChatModel[1].body}"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return GroupChatScreen();
                    }),
                  );
                },
              ),
              recentChatBuilder(
                  image: AppImages.leeWilliamson,
                  name: "Lee Williamson",
                  body: "${recentChatModel[2].body}"),
              recentChatBuilder(
                  image: AppImages.ronaldMccoy,
                  name: "Ronald Mccoy",
                  body: "${recentChatModel[3].body}"),
              recentChatBuilder(
                  image: AppImages.albertBell,
                  name: "albert Bell",
                  body: "${recentChatModel[4].body}"),
            ],
          ),
        ),
      ),
    );
  }

  Widget recentChatBuilder(
      {required String image, required String name, required String body}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: name == "Darlene Steward"
              ? Colors.blue.shade100
              : Colors.grey.shade100,
        ),
        height: 80,
        width: double.infinity,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image(
                      image: AssetImage(image),
                      fit: BoxFit.fill,
                      width: 40,
                    ),
                  ),
                  name == "Fullsnack Designers"
                      ? Positioned(child: Text(""))
                      : Positioned(
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
                              color: name == recentChatModel[0].name
                                  ? Colors.yellow
                                  : Colors.grey,
                            ),
                          ),
                        ),
                ],
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            Expanded(
              child: ListTile(
                title: Text(name),
                subtitle: Text(body),
                trailing: Column(
                  children: [
                    name == "Ronald Mccoy" || name == "albert Bell"
                        ? Text(dDateTime)
                        : Text(hDateTime),
                    const SizedBox(
                      height: 10,
                    ),
                    name == "Darlene Steward"
                        ? const CircleAvatar(
                            backgroundColor: Colors.blue,
                            radius: 13,
                            child: CircleAvatar(
                              child: Text("5"),
                            ),
                          )
                        : const Text(""),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget categoryBuilder({required String text, Color? color}) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: color == null ? const Color(0x00000002F80ED) : color,
          ),
          alignment: Alignment.center,
          height: 26,
          width: 62,
          child: color == null
              ? Text(
                  text,
                  style: const TextStyle(color: Colors.black),
                )
              : Text(
                  text,
                  style: const TextStyle(color: Colors.white),
                )),
    );
  }
}
