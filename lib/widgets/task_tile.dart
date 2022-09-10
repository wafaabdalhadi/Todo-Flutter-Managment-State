import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallback;
  final Function longPressCallback;


  TaskTile({required this.isChecked, required this.taskTitle, required this.checkboxCallback, required this.longPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback as VoidCallback,
      title: Text(taskTitle, style: TextStyle(
        decoration: isChecked ? TextDecoration.lineThrough : null,
      ),),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallback as void Function(bool?)?,
        // onChanged: toggleCheckboxState as void Function(bool?)?,
      ),
    );
  }
}



