import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Sreen_2.dart';



Future<void> main() async {
  runApp(MaterialApp(
    home: screen_1(),
  ));
}

class screen_1 extends StatelessWidget {
  final passwrod = TextEditingController();

  @override
  Widget build(BuildContext context) {
    GetSavedvalue(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(22),
              child: TextField(
                controller: passwrod,
                decoration: InputDecoration(hintText: 'type',
                border: OutlineInputBorder()),
              ),
            ),
            ElevatedButton(onPressed: () {
              saveData();
            }, child: Text("save value"))
          ],
        ),
      ),
    );
  }
  Future<void>saveData()async{
    print(passwrod.text);

    final sharedprefd = await SharedPreferences.getInstance();

    //save value
    await sharedprefd.setString('save_value', passwrod.text);
  }

  Future<void> GetSavedvalue(BuildContext context) async {
    final sharedprefds = await SharedPreferences.getInstance();
    final savedvalue = sharedprefds.get('save_value');
    if (savedvalue != null) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => screentwo()));
    }
  }
}
