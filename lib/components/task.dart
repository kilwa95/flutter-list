import 'package:flutter/material.dart';

import '../screens/edit_page.dart';

class Task extends StatefulWidget {
  const Task({super.key});

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: () {
        Navigator.push(
          context,
          MaterialPageRoute<String>(
            builder: (BuildContext context) => const EditPage(),
          ),
        );
      },
      child: Row(
        children: <Widget>[
          Checkbox(
            value: isChecked,
            onChanged: (bool? value) {
              setState(() {
                isChecked = value!;
              });
            },
          ),
          const Text("task1"),
          const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Icon(
              Icons.close,
              color: Colors.red,
              size: 24.0,
              semanticLabel: 'Text to announce in accessibility modes',
            ),
          ),
        ],
      ),
    );
  }
}
