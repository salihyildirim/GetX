import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:numberpicker/numberpicker.dart';

class AddRecordView extends StatefulWidget {
  const AddRecordView({super.key});

  @override
  State<AddRecordView> createState() => _AddRecordState();
}

class _AddRecordState extends State<AddRecordView> {
  int _selectedValue = 70;
  DateTime _selectedDate = DateTime.now();

  void pickDate(BuildContext context) async {
    var initialDate = DateTime.now();

    _selectedDate = await showDatePicker(
            context: context,
            initialDate: initialDate,
            firstDate: initialDate.subtract(Duration(days: 365)),
            lastDate: initialDate.add(
              Duration(days: 30),
            ),
            builder: (context, child) {
              return Theme(
                data: ThemeData.light().copyWith(
                    colorScheme: const ColorScheme(
                        brightness: Brightness.light,
                        primary: Colors.black,
                        onPrimary: Colors.black,
                        secondary: Colors.black,
                        onSecondary: Colors.brown,
                        error: Colors.red,
                        onError: Colors.orange,
                        background: Colors.blueGrey,
                        onBackground: Colors.blueAccent,
                        surface: Colors.blue,
                        onSurface: Colors.black26)),
                child: child ?? Text(''),
              );
            }) ??
        _selectedDate;

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add New Record'), centerTitle: true),
      body: Column(
        children: [
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    FontAwesomeIcons.weightScale,
                    size: 40,
                  ),
                  Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      NumberPicker(
                        minValue: 30,
                        maxValue: 200,
                        value: _selectedValue,
                        onChanged: (int value) {
                          setState(() {
                            _selectedValue = value;
                          });
                        },
                        axis: Axis.horizontal,
                        itemWidth: 80,
                        itemHeight: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.grey)),
                      ),
                      Icon(
                        FontAwesomeIcons.chevronUp,
                        size: 16,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () async {
              //datepicker göster ve secili tarihi selectedDate 'e ata.
              //datepicker kapanınca setState ile seçilen tarihi göster.
              pickDate(context);
            },
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  children: [
                    Icon(
                      FontAwesomeIcons.calendar,
                      size: 40,
                    ),
                    Expanded(
                      child: Text(
                        DateFormat('EEE,MMM,d').format(_selectedDate),
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            child: Text("Note Card"),
          ),
          ElevatedButton(
              onPressed: () {},
              child: Text("Save Record"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
              ))
        ],
      ),
    );
  }
}
