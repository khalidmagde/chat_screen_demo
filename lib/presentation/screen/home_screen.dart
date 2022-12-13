import 'package:chat_screen/core/constants/appimages.dart';
import 'package:chat_screen/data/static/static.dart';
import 'package:chat_screen/presentation/widget/appBarWidgets/custom_appbar_home.dart';
import 'package:chat_screen/presentation/widget/homeScreenWidgets/custom_buttom_navigation.dart';
import 'package:chat_screen/presentation/widget/homeScreenWidgets/pinned_chats.dart';
import 'package:chat_screen/presentation/widget/homeScreenWidgets/recent_chats.dart';
import 'package:flutter/material.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add_comment_rounded),
      ),
      bottomNavigationBar: const CustomButtomNavgigationBar(),
      body: SafeArea(
        child: Stack(
          children: [
            Scaffold(
              appBar: CustomAppBarHome(),
              body: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      //Mike
                      PinnedChat(
                        name: "${pinnedChatModel[0].name}",
                        body: "${pinnedChatModel[0].body}",
                        image: AppImages.mikeWazowski,
                      ),
                      //Darlene
                      PinnedChat(
                        name: "${pinnedChatModel[1].name}",
                        body: "${pinnedChatModel[1].body}",
                        image: AppImages.darleneSteward,
                        color: Colors.blue.shade100,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      //Greogory
                      PinnedChat(
                        name: "${pinnedChatModel[2].name}",
                        body: "${pinnedChatModel[2].body}",
                        image: AppImages.gregoryRobertson,
                      ),
                      //Dwight
                      PinnedChat(
                        name: "${pinnedChatModel[3].name}",
                        body: "${pinnedChatModel[3].body}",
                        image: AppImages.dwightWilson,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const RecentChat(),
          ],
        ),
      ),
    );
  }
}
