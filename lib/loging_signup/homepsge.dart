import 'package:flutter/material.dart';
import 'package:hiveee/loging_signup/Sreen_2.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'screen_1.dart';

Future<void> main() async {
  runApp(MaterialApp(
    home: homepage(),
  ));
}

class homepage extends StatelessWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: screen_1(),
    );
  }
}


