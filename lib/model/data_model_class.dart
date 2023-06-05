
import 'package:hive/hive.dart';
part 'data_model_class.g.dart' ;

@HiveType(typeId:1)

class Studentmodel{
  @HiveField(0)
   int?id;

  @HiveField(1)
  final String name;

  @HiveField(2)
  final String age;

   Studentmodel({required this.name,required this.age,this.id});
 }