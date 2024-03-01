class Record {
  final int weight;
  final DateTime dateTime;
  final String? note; //optional
  final String? photoUrl; //optional

  Record({required this.weight,required this.dateTime, this.note, this.photoUrl});
}
