import 'package:flutter/material.dart';




class ThiredScreen extends StatelessWidget {
  const ThiredScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:const Color.fromARGB(255, 20, 156, 93),
      body: SafeArea(child: Center(
        child: ElevatedButton(onPressed: (){
         
        }, child: const Text("thired screen")),
      )),
    );
  }
}