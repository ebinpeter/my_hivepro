import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hiveee/db/function.dart';

import '../model/data_model_class.dart';

class liststudent extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
          valueListenable: studentlisttifier,
          builder: (BuildContext ctx, List<Studentmodel> studentList,
              Widget? child) {
            return ListView.separated(
                itemBuilder: (ctx, index) {
                  final data = studentList[index];
                  return ListTile(
                    title: Text(data.name),
                    subtitle: Text(data.age),
                    trailing: Wrap(children: [
                      IconButton(
                          onPressed: () {
                          },
                          icon: Icon(Icons.edit)),
                      IconButton(
                        onPressed: () {
                          if (data.id != null) {
                            Delete(data.id!);
                          } else {
                            print("Student id is null unable to  delete");
                          }
                        },
                        icon: Icon(
                          CupertinoIcons.delete,
                          color: Colors.purple,
                        ),
                      ),
                    ]),
                  );
                },
                separatorBuilder: (ctx, index) {
                  return const Divider();
                },
                itemCount: studentList.length);
          }),

    );
  }

}
