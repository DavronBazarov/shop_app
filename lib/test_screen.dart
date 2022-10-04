import 'dart:math';

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: (){
          DatabaseReference _testRef = FirebaseDatabase.instance.ref().child("test");
          _testRef.set("Hello World ${Random().nextInt(100)}");
        }, child: Text("Press")),
      ),
    );
  }
}
