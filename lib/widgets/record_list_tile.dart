import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx/view-models/controller.dart';
import 'package:intl/intl.dart';
import 'package:getx/models/record.dart'; // Kullanmak istediğiniz Record sınıfının bulunduğu dosya yolu



class RecordListTile extends StatelessWidget {
  final Record record;
  RecordListTile({super.key, required this.record});
  final Controller _controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Card(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: EdgeInsets.only(top: 8.0,bottom: 8.0),
        child: ListTile(  
          leading: _buildDate(),
          title: _buildWeight(),
          trailing: _buildIcons(),
        ),
      ),
    );
  }

  Row _buildIcons() {
    return Row(mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.edit,color: Colors.grey,),
            ),
            IconButton(
              onPressed: () {_controller.deleteRecord(record);},
              icon: Icon(Icons.delete,color: Colors.red,),
            ),
          ],
        );
  }

  Center _buildWeight() => Center(child: Text("${record.weight}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),));

  Text _buildDate() => Text(DateFormat('EEE, MMM d').format(record.dateTime));
}
