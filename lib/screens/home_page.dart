import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../components/task.dart';
import 'add_task_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("TodoList"),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute<String>(
                builder: (BuildContext context) => const AddTaskPage(),
              ),
            );
          },
        ),
        body: ListView(
          padding: const EdgeInsets.all(16),
          children: const <Widget>[
            Task(),
            Gap(20),
            Task(),
            Gap(20),
            Task(),
          ],
        ),
      ),
    );
  }
}
