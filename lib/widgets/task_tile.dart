import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({
    super.key,
    required this.taskTitle,
    required this.isChecked,
    required this.checkboxCallback,
    required this.onLongPress,
  });

  final String taskTitle;
  final bool isChecked;
  final Function(bool?) checkboxCallback;
  final Function() onLongPress;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: () {
        onLongPress();
      },
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}
