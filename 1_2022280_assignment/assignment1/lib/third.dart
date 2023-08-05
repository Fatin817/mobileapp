import 'package:flutter/material.dart';

class Task {
  int id;
  String title;
  String description;
  String date;
  Task(this.id, this.title, this.description, this.date);
}

class Home extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  List<Task> tasks = [];
  int taskNumber = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Task Board",
          style: TextStyle(color: Colors.black, fontSize: 30),
        ),
        backgroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          return Container(
            color: const Color.fromARGB(255, 217, 222, 225),
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  tasks[index].title,
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  tasks[index].description,
                  style: TextStyle(fontSize: 13, color: Colors.black),
                ),
                Container(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    tasks[index].date,
                    style: TextStyle(
                        fontSize: 13,
                        color: const Color.fromARGB(255, 172, 168, 168)),
                  ),
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 88, 84, 84),
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            taskNumber++;
            tasks.add(
              Task(
                taskNumber,
                'Task $taskNumber',
                'Your Personal task management and planning solution for planning your day, week & months',
                '12:55 pm 25th May, 2023',
              ),
            );
          });
        },
      ),
    );
  }
}
