import 'dart:io';

import 'package:cameraapp/data/hive.dart';
import 'package:cameraapp/data/model.dart';
import 'package:cameraapp/screens/galary.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

// ignore: must_be_immutable
class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  File? image;

  void pickImage() async {
    final image = await ImagePicker().pickImage(source: ImageSource.camera);

    if (image == null) {
      return;
    }
    final imagestorage = File(image.path);

    setState(() {
      this.image = imagestorage;
    });

    final cameramodel = Cameramodel(camera: imagestorage.path);
    addcamera(cameramodel);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 12, 12, 12),
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: image != null
                ? Image.file(
                    image!,
                    width: 200,
                    height: 200,
                  )
                : Image.asset(
                    'images/sd1.png',
                    width: 50,
                    height: 50,
                  ), // Display either the picked image or a placeholder
          ),
          SizedBox(
            height: 200,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  width: 200,
                  child: ElevatedButton(
                      onPressed: () {
                        pickImage();
                      },
                      child: Icon(Icons.camera_alt))),
              SizedBox(
                height: 15,
              ),
              Container(
                width: 200,
                child: ElevatedButton(
                  style: ButtonStyle(),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Galary()));
                  },
                  child: Icon(Icons.image),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
