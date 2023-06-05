import 'package:flutter/cupertino.dart';
import 'package:hive/hive.dart';
import 'package:hiveee/model/data_model_class.dart';

ValueNotifier<List<Studentmodel>> studentlisttifier = ValueNotifier([]);

Future<void> adddstudent(Studentmodel value) async {

  final student_db = await Hive.openBox<Studentmodel>(" student_db");
  final _id = await student_db.add(value);
  value.id  = _id ;

 studentlisttifier.value.add(value);
  studentlisttifier.notifyListeners();
}

Future<void> getstudent() async {
  final student_db = await Hive.openBox<Studentmodel>(" student_db");
  studentlisttifier.value.clear();

  studentlisttifier.value.addAll(student_db.values);
  studentlisttifier.notifyListeners();
}
Future<void>Delete(int id)async{
  final student_db = await Hive.openBox<Studentmodel>(" student_db");
 await student_db .delete(id);
  getstudent() ;
}



