import 'package:cameraapp/data/model.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

ValueNotifier<List<Cameramodel>> cameranotifier = ValueNotifier([]);

Future<void>addcamera(Cameramodel value) async {
 

 
 

  final cameraDb = await Hive.openBox<Cameramodel>('camera');

   cameranotifier.value.add(value);
    // ignore: invalid_use_of_protected_member, invalid_use_of_visible_for_testing_member
    cameranotifier.notifyListeners();

    print('misstion completed//////////////////////');

  cameraDb.add(value);
}

getallcamera() async{

  cameranotifier.value.clear();

  
  final cameraDb = await Hive.openBox<Cameramodel>('camera');


  cameranotifier.value.addAll(cameraDb.values);

  // ignore: invalid_use_of_protected_member, invalid_use_of_visible_for_testing_member
  cameranotifier.notifyListeners();



}
