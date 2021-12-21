
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    late String taskName;
    Taskdata provider = Provider.of<Taskdata>(context, listen: false);
    return Container(
      padding: const EdgeInsets.all(18),
      child: Column(
        children: [
          Text(
            "Add Task",
            style: TextStyle(fontSize: 30, color: Colors.tealAccent),
            textAlign: TextAlign.center,
          ),
          TextField(
            onChanged: (newString) {
              taskName = newString;
            },
            autofocus: true,
            textAlign: TextAlign.center,
          ),
          TextButton(
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all<Color>(Colors.tealAccent),
            ),
            onPressed: () {
              // print(taskName);
              provider.addData(taskName);
              Navigator.pop(context);
            },
            child: Text("Submit"),
          ),
        ],
      ),
    );
  }
}
