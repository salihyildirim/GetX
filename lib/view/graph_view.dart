import "package:flutter/material.dart";

class GraphScreen extends StatefulWidget {
  const GraphScreen({super.key});

  @override
  State<GraphScreen> createState() => _GraphScreenState();
}

class _GraphScreenState extends State<GraphScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text("GRAPH")),
      body: Center(
        child: Text("GRAPH SCREEN"),
      ),
    );
  }
}
