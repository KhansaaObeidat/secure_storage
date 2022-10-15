import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:scurestorage_example/secondscreen.dart';
import 'package:scurestorage_example/thirdscreen.dart';
class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(child: Center(
        child: ElevatedButton(onPressed: () async {
// ignore: prefer_const_constructors
final storage = FlutterSecureStorage();

          final value =  await storage.read(key: "didgoTOsecondscreen");
// ignore: unnecessary_null_comparison
if (value==null|| value == "second"){
     await  storage.write(key: "didgoTOsecondscreen", value: "third");

 // ignore: use_build_context_synchronously
 Navigator.of(context).push(MaterialPageRoute(builder:(context)=> const SecondScreen()));
}else{
       await  storage.write(key: "didgoTOsecondscreen", value: "second");

  // ignore: use_build_context_synchronously
  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const ThiredScreen()));
}
                  

        }, child: const Text("go to other")),
      )),
    );
  }
}