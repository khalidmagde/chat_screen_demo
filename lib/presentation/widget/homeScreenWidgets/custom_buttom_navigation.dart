import 'package:flutter/material.dart';

class CustomButtomNavgigationBar extends StatelessWidget {
  const CustomButtomNavgigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.chat_rounded),
          ),
          label: '',
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.timer_rounded),
          label: '',
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.call),
          label: '',
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.perm_contact_cal_rounded),
          label: '',
        ),
      ],
    );
  }
}
