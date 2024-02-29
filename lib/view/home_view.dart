import 'package:flutter/material.dart';
import 'package:getx/view/graph_view.dart';
import 'package:getx/view/history_view.dart';

class Home extends StatefulWidget {

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("YOUR WEIGHTS"),centerTitle: true,
      ),
      body: HistoryScreen(),
      floatingActionButton: FloatingActionButton(onPressed: () {  },
          child: Icon(Icons.add)),
    );
  }
}
