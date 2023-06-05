import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hiveee/screeen/add_student.dart';
import 'package:hiveee/screeen/list_student.dart';

import '../db/function.dart';

void main() {
  runApp(MaterialApp(
    home: screen_home(),
  ));
}

class screen_home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    getstudent();
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [addstudent(), Expanded(child: liststudent())],
        ),
      ),
    );
  }
}
