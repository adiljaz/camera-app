// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CameramodelAdapter extends TypeAdapter<Cameramodel> {
  @override
  final int typeId = 1;

  @override
  Cameramodel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Cameramodel(
      camera: fields[0] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Cameramodel obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.camera);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CameramodelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
