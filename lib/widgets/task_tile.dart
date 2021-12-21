import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool? isChecked;
  final String? taskTile;
  final void Function(bool?)? isTaskDone;

  final void Function()? removeTaskCall;

  TaskTile({
    this.isChecked,
    this.taskTile,
    required this.isTaskDone,
    required this.removeTaskCall,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTile!,
        style: TextStyle(
          decoration: isChecked! ? TextDecoration.lineThrough : null,
        ),
      ),
      leading: Checkbox(
        value: isChecked,
        onChanged: isTaskDone,
      ),
      trailing: GestureDetector(
        onTap: removeTaskCall,
        child: Icon(
          Icons.close,
          color: Colors.red,
        ),
      ),
    );
  }
}
