import "package:flutter/material.dart";
import "package:getx/widgets/record_list_tile.dart";

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(centerTitle: true, title: Text("History")),
        body: ListView(physics: BouncingScrollPhysics(),
          children: [
            RecordListTile(),
            RecordListTile(),
            RecordListTile(),
            RecordListTile(),
          ],
        ));
  }
}
