import "package:flutter/material.dart";
import "package:get/get.dart";
import "package:get/get_core/src/get_main.dart";
import "package:getx/view-models/controller.dart";
import "package:getx/widgets/record_list_tile.dart";
import '../models/record.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  final Controller _controller = Get.put(
      Controller()); // ilk kez kullanırken put, sonrakilerde inject için .find();


  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
        appBar: AppBar(centerTitle: true, title: Text("History"), actions: [
          IconButton(
              onPressed: () {
                _controller.addRecord();
              },
              icon: Icon(Icons.add))
        ]),
        body: _controller.records.isEmpty? Center(child: Container(child: Text('Please Add Some Records'),),):ListView(
            physics: BouncingScrollPhysics(),
            children: _controller.records
                .map((record) => RecordListTile(record: record))
                .toList())));
  }
}
