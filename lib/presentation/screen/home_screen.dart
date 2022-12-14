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
            body: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 350 / 240, crossAxisCount: 2),
                itemCount: pinnedChatModel.length,
                itemBuilder: (context, i) {
                  return PinnedChat(pinnedChatModel: pinnedChatModel[i]);
                }),
          ),
          const RecentChat(),
        ],
      )),
    );
  }
}
