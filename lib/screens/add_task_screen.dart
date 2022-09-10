import 'package:flutter/material.dart';
import 'package:todo_flutter/models/task.dart';
import 'package:provider/provider.dart';
import 'package:todo_flutter/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {

  // final Function addTaskCallback;
  // AddTaskScreen(this.addTaskCallback);

  @override
  Widget build(BuildContext context) {
    String newTaskTitle= '';

    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget> [
            Text('Add Task', style: TextStyle(
              fontSize: 30.0,
              color: Colors.lightBlueAccent,
            ), textAlign: TextAlign.center,),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText){
                 newTaskTitle = newText;
              },
            ),
            FlatButton(
              onPressed: (){
                Provider.of<TaskData>(context, listen: false).addTask(newTaskTitle);
                Navigator.pop(context);
                  // addTaskCallback(newTaskTitle);
            }, child: Text('Add', style: TextStyle(
              color: Colors.white,
            ),),
            color: Colors.lightBlueAccent,)
          ],
        ),
      ),
    );
  }
}
