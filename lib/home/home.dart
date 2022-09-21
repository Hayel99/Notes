
import 'package:noteapp/main.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List notes = [
    "I have a job interview at eleven o'clock",
    "I have a meeting to discuss the latest developments of the project at three o'clock in the afternoon",
    "Parties and events coordinators number 0788100380",
    "Visiting the dentist on Saturday at midnight",
    "Parents meeting on Sunday at 5 pm",
  ];
  List notesDate = [
    "10/12/2022",
    "11/10/2022",
    "04/09/2022",
    "05/07/2022",
    "01/02/2022"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: Colors.deepOrange,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.of(context).pushNamed("AddNote");
        },
        backgroundColor: Color.fromARGB(255, 194, 223, 34),
      ),
      body: Container(
        child: ListView.builder(
            itemCount: notes.length,
            itemBuilder: (context, i) {
              return Dismissible(
                background: Container(
                  color: Color.fromARGB(255, 247, 19, 3),
                  child:  Center(
                    child: Text(
                      "Delete",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),

                    ),
                  ),
                ),
                key: Key("$i"),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.deepOrange,
                      borderRadius: BorderRadius.circular(15)),
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("${notesDate[i]}"),
                          IconButton(
                            icon: Icon(
                              Icons.edit,
                              color: Colors.white,
                              size: 20,
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                      Text(
                        "${notes[i]}",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
