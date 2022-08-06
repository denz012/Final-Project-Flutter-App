import 'dart:js';
import 'package:myapp/details.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Order Book';
    return MaterialApp(
      title: appTitle,
      home: const list(),
    );
  }
}

class list extends StatelessWidget {
  const list({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Request List'),
      ),
      body: _buildListView(context),
    );
  }
}

ListView _buildListView(BuildContext context) {
  int x = 1;
  return ListView.builder(
    itemCount: 3,
    itemBuilder: (_, index) {
      return ListTile(
        title: Text('Request #$index) '),
        subtitle: Text('03-14-22'),
        leading: Icon(Icons.abc),
        trailing: Icon(Icons.arrow_forward),
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: ((context) => detailPage(index: index))));
        },
      );
    },
  );
}

details(int index) {}
