import 'package:flutter/material.dart';

import '../components/todo_form.dart';

class AddTaskPage extends StatelessWidget {
  const AddTaskPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("add TodoList"),
        ),
        body: const TodoForm(
          buttonText: 'add',
        ),
      ),
    );
  }
}
