import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {

     // ignore: prefer_const_constructors

  
  @override
  Widget build(BuildContext context) {
   

    return  Scaffold(
      backgroundColor:const  Color.fromARGB(255, 156, 20, 20),
      body: SafeArea(child: Center(
        child: ElevatedButton(onPressed: (){

        }, child: const Text("second screen")),
      )),
    );
  }
}