import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class screentwo extends StatelessWidget {
  const screentwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          // ElevatedButton(onPressed: (){}, child: child)
          Text('Found Value')
        ],
      )),
    );
  }
}
