import 'package:cameraapp/data/model.dart';
import 'package:cameraapp/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();

  await  Hive.initFlutter();


  if(!Hive.isAdapterRegistered(CameramodelAdapter().typeId)){

    Hive.registerAdapter(CameramodelAdapter());


  }


   

  

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Camera app',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        primarySwatch: Colors.deepPurple,
      ),
      home: Home(),
    );
  }
}
