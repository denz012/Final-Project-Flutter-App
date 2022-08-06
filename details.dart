import 'package:flutter/material.dart';

class detailPage extends StatelessWidget {
  final int index;
  detailPage({required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Details')),
        body: Center(
          child: Text('Details #$index'),
        ));
  }
}
