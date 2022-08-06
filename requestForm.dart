import 'package:flutter/material.dart';
import 'package:myapp/requestList.dart';
import 'package:myapp/main.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Requesting Record Form';
    return MaterialApp(
      title: appTitle,
      home: requestForm(),
    );
  }
}

class requestForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  var _data = "";

  var _date;
  var _name;
  var _studentNumber;
  var _phoneNumber;
  var _documents;
  var _course;
  var _department;
  final datecon = new TextEditingController();
  final namecon = new TextEditingController();
  final sncon = new TextEditingController();
  final pncon = new TextEditingController();
  final doccon = new TextEditingController();
  final ccon = new TextEditingController();
  final depcon = new TextEditingController();

  int x = 0;
  requestForm({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Request Form"),
        key: _formKey,
      ),
      body: Center(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          TextFormField(
            controller: namecon,
            decoration: const InputDecoration(
              icon: const Icon(Icons.person),
              hintText: 'Enter your name',
              labelText: 'Name',
            ),
          ),
          TextFormField(
            controller: sncon,
            decoration: const InputDecoration(
              icon: const Icon(Icons.perm_identity),
              hintText: 'Enter Student number',
              labelText: 'Student Number',
            ),
          ),
          TextFormField(
            controller: datecon,
            decoration: const InputDecoration(
              icon: const Icon(Icons.perm_identity),
              hintText: 'Date',
              labelText: 'Enter Date (03-14-22)',
            ),
          ),
          TextFormField(
            controller: pncon,
            decoration: const InputDecoration(
              icon: const Icon(Icons.phone),
              hintText: 'Enter Phone number',
              labelText: 'Phone Number',
            ),
          ),
          TextFormField(
            controller: doccon,
            decoration: const InputDecoration(
              icon: const Icon(Icons.details),
              hintText: 'Documents',
              labelText: 'What type of Documents',
            ),
          ),
          TextFormField(
            controller: ccon,
            decoration: const InputDecoration(
              icon: const Icon(Icons.description),
              hintText: 'Course',
              labelText: 'What Course',
            ),
          ),
          TextFormField(
            controller: depcon,
            decoration: const InputDecoration(
              icon: const Icon(Icons.info),
              hintText: 'Department',
              labelText: 'What Department',
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => one()),
                );
              },
              child: const Text('SAVE'),
            ),
          ),
        ]),
      ),
    );
  }
}
