import 'package:flutter/material.dart';

import 'bottom_button.dart';

class TodoForm extends StatefulWidget {
  const TodoForm({
    super.key,
    required this.buttonText,
  });

  final String buttonText;

  @override
  State<TodoForm> createState() => _TodoFormState();
}

class _TodoFormState extends State<TodoForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Column(
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  child: Text("title"),
                ),
                TextFormField(),
                const Text("description"),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: TextFormField(
                    maxLines: 8,
                    decoration: const InputDecoration.collapsed(
                      hintText: "Enter your text here",
                    ),
                  ),
                ),
              ],
            ),
          ),
          BottomButton(buttonText: widget.buttonText)
        ],
      ),
    );
  }
}
