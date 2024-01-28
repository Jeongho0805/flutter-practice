import 'package:contact/component/my_button.dart';
import 'package:flutter/material.dart';

class DialogBox extends StatelessWidget {
  final controller;
  const DialogBox({super.key, required this.controller });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow,
      content: Container(
        height: 120,
        child:
            Column (mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          TextField(
            controller: controller ,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "할 일 목록을 입력해주세요",
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.end, children: [
            MyButton(text: "Save", onPressed: () {}),
            const SizedBox(width: 8),
            MyButton(text: "Cancel", onPressed: () {}),
          ]),
        ]),
      ),
    );
  }
}
