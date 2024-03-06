import 'package:get/get.dart';
import '../models/record.dart';

class Controller extends GetxController {
  var records = <Record>[
    // Record(dateTime: DateTime.now(), weight: 90, note: 'AAA'),
    // Record(dateTime: DateTime.now(),weight: 89,note: 'BBB'),
    // Record(dateTime: DateTime.now(),weight: 88,note: 'CCC'),
    // Record(dateTime: DateTime.now(),weight: 87,note: 'DDD')
  ].obs;

  void addRecord(){
    records.add(Record(dateTime: DateTime.now(), weight: 90, note: 'jlklşm'));
  }

  void deleteRecord(Record record){
    records.remove(record);
  }
}

