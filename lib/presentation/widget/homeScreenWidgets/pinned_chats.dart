import 'package:chat_screen/data/static/static.dart';
import 'package:flutter/material.dart';

class PinnedChat extends StatelessWidget {
  final String name;
  final String body;
  final String image;
  final Color? color;
  const PinnedChat(
      {super.key,
      required this.name,
      required this.body,
      required this.image,
      this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color ?? Colors.grey.shade100,
      ),
      height: 100,
      width: 180,
      child: SizedBox(
        height: 20,
        width: 20,
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image(
                          image: AssetImage(image),
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
                              color: name == pinnedChatModel[3].name
                                  ? Colors.green
                                  : Colors.yellow,
                            ),
                          ))
                    ],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(name),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              body,
              maxLines: 1,
            ),
          ],
        ),
      ),
    );
  }
}
