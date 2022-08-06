import 'package:flutter/material.dart';
import 'dart:io';
import 'package:path/path.dart';
import 'package:myapp/requestForm.dart';
import 'package:myapp/requestList.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Requesting Record Form';
    return MaterialApp(
      title: appTitle,
      home: one(),
    );
  }
}

class one extends StatefulWidget {
  @override
  form createState() => form();
}

class form extends State<one> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Request Record"),
        key: _formKey,
      ),
      body: Center(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => requestForm()),
                );
              },
              child: const Text('Request Form'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => list()),
                );
              },
              child: const Text('Request List'),
            ),
          ),
        ]),
      ),
    );
  }
}
