import 'package:flutter/material.dart';

import '../components/todo_form.dart';

class EditPage extends StatelessWidget {
  const EditPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("edit TodoList"),
        ),
        body: const TodoForm(buttonText: 'save'),
      ),
    );
  }
}
