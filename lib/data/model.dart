
import 'package:hive/hive.dart';
part 'model.g.dart';

@HiveType(typeId: 1)
class Cameramodel {

  @HiveField(0)
  String camera;

 Cameramodel({required this.camera});
}
