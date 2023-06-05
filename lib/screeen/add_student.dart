import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hiveee/model/data_model_class.dart';

import '../db/function.dart';

void main() {
  runApp(MaterialApp(
    home: addstudent(),
  ));
}

class addstudent extends StatelessWidget {
  var namecontroller = TextEditingController();
  var agecontroller = TextEditingController();

  List<Map<String, dynamic>> task = [];



  void showtask(BuildContext context, int? itemkey) {
    showModalBottomSheet(
        context: context,
        builder: (ctx) {
          return Container(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
                top: 20,
                left: 20,
                right: 20),
            child: Column(
              children: [
                TextField(
                  controller: namecontroller,
                  decoration: InputDecoration(hintText: "title"),
                ),
                TextField(
                  controller: agecontroller,
                  decoration: InputDecoration(hintText: "title"),
                ),
                ElevatedButton(onPressed: ()async{

                }, child:Text("") )
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return
      Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: namecontroller,
                    decoration: InputDecoration(
                        hintText: ' Name', border: OutlineInputBorder()),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: agecontroller,
                    decoration: InputDecoration(
                        hintText: 'Age', border: OutlineInputBorder()),
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    onaddStudentelevate();
                   // showtask();
                  },
                  icon: Icon(Icons.add),
                  label: Text("Add Student"),
                )
              ],
            ),
          );
  }

  Future<void> onaddStudentelevate() async {
    final _name = namecontroller.text.trim();
    final _age = agecontroller.text.trim();
    if (_name.isEmpty || _age.isEmpty) {
      return;
    }
   //  print("$_name $_age");

   final _student = Studentmodel(name: _name, age: _age,);
    adddstudent(_student);
  }

}
