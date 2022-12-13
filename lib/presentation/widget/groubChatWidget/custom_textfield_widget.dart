import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            padding: const EdgeInsets.only(left: 5),
            width: double.infinity,
            height: 30,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Expanded(
                    child: Text(
                  "# General",
                  style: TextStyle(color: Colors.blueAccent),
                )),
                const Icon(
                  Icons.arrow_drop_up_rounded,
                  color: Colors.blueAccent,
                ),
                Container(
                    child: const Icon(
                  Icons.more_vert_rounded,
                  color: Colors.blueAccent,
                )),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 1),
            child: TextField(
              decoration: InputDecoration(
                hintText: "type Message..",
                prefixIcon: const Icon(Icons.tag_faces_sharp),
                suffixIcon: Container(
                  padding: const EdgeInsets.only(right: 3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(
                        Icons.attach_file_rounded,
                        color: Colors.black,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(3)),
                        child: const Icon(
                          Icons.mic_rounded,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
