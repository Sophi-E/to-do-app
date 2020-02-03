import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = true;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'This is a todo',
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: TaskCheckBox(isChecked),
    );
  }
}

class TaskCheckBox extends StatelessWidget {
  final bool checkboxState;
  TaskCheckBox(this.checkboxState);

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: checkboxState,
      onChanged: (newValue) {
        // setState(() {
        //   isChecked = newValue;
        // });
      },
    );
  }
}
