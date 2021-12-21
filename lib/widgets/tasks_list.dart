
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/models/task_data.dart';
import 'package:todo_app/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //  Taskdata provider = Provider.of<Taskdata>(context);
    return Consumer<Taskdata>(
      builder: (context, provider, child) => ListView.builder(
          itemCount: provider.taskList.length,
          itemBuilder: (context, index) {
            return TaskTile(
              taskTile: provider.taskList[index].name,
              isChecked: provider.taskList[index].isCompleted,
              isTaskDone: (newValue) {
                provider.updateData(provider.taskList[index]);
              },
              removeTaskCall: () {
                provider.removeTask(provider.taskList[index]);
              },
            );
          }),
    );
  }
}
