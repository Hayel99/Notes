import 'package:flutter/material.dart';
import 'package:noteapp/home/home.dart';

class AddNote extends StatefulWidget {
  AddNote({Key? key}) : super(key: key);

  @override
  State<AddNote> createState() => _AddNoteState();
}

class _AddNoteState extends State<AddNote> {
  TextEditingController addNoteController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New Note"),
        actions: [
          IconButton(onPressed: (){
          Navigator.pop(context);
          }, icon: Icon(Icons.done))
        ],
        backgroundColor: Colors.deepOrange,
      ),
      body: Container(
          child: Form(
              child: Column(
        children: [
          TextField(
            textInputAction: TextInputAction.done,

            textAlign: TextAlign.start,
            cursorColor: Colors.deepOrange,
            controller: addNoteController,
            decoration: const InputDecoration(
              disabledBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
            ),
          ),
        ],
      ))),
    );
  }
}
