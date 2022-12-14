import 'package:chat_screen/core/constants/appimages.dart';
import 'package:flutter/material.dart';

class CustomAppBarHome extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: const Text(
          "Pinned Chats",
          style: TextStyle(color: Colors.black),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 17,
              child: CircleAvatar(
                  backgroundImage: AssetImage(AppImages.menna), radius: 16),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(40);
}
