import 'package:flutter/material.dart';

import 'task_tile.dart';

class TasksList extends StatelessWidget {
  const TasksList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        TaskTile(),
        ListTile(
          title: Text('This is a task'),
          trailing: Checkbox(
            value: false,
            onChanged: null,
          ),
        ),
        ListTile(
          title: Text('This is a task'),
          trailing: Checkbox(
            value: false,
            onChanged: null,
          ),
        ),
      ],
    );
  }
}
