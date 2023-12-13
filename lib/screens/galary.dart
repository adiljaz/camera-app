import 'dart:io';

import 'package:cameraapp/data/hive.dart';
import 'package:cameraapp/data/model.dart';
import 'package:flutter/material.dart';

class Galary extends StatelessWidget {
  const Galary({Key? key});

  @override
  Widget build(BuildContext context) {
    getallcamera();

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 8, 8, 8),
      appBar: AppBar(title: Text('Galary'), centerTitle: true),
      body: ValueListenableBuilder(
        valueListenable: cameranotifier,
        builder: (context, List<Cameramodel> newvalue, child) {
          return GridView.builder(
            itemCount: newvalue.length,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (context, index) {
              final data = newvalue[index];

              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  color: Colors.amber,
                  child: Container(
                    color: Colors.amber,
                    width:
                        100, // Increase the size to accommodate larger images
                    height:
                        100, // Increase the size to accommodate larger images
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          child: Image.file(
                            File(
                              data.camera,
                            ),
                            fit: BoxFit.cover,
                            width: 200,
                            height: 156,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
