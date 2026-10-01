import 'dart:async';
import 'dart:io';

import 'triangle.dart';
import 'enum.dart';

void main(){
  MeasurementConversion? userInputConversion;
  double? userInputheight;
  double? userInputwidth;

  while (userInputConversion == null){
  print('Bitte gib eine Einheit an! mm/cm/dm/m/inch/feet');

  final input = stdin.readLineSync() ?? '';

 userInputConversion = MeasurementConversion.values.where((unit) => unit.name == input).firstOrNull;
 
  }
  while (userInputheight == null || userInputheight <= 0){
    print('Bitte gib eine Höhe ein!');
    userInputheight = double.tryParse(stdin.readLineSync() ?? '');
  }
  while (userInputwidth == null || userInputwidth <= 0){
    print('Bitte gib eine Breite ein!');
    userInputwidth = double.tryParse(stdin.readLineSync() ?? '');
  }

Triangle triangle;

switch (userInputConversion) {
  case MeasurementConversion.mm:
    triangle = Triangle(
      heightInMm: userInputheight,
      widthInMm: userInputwidth,
    );
    break;

  case MeasurementConversion.cm:
    triangle = Triangle.cm(
      height: userInputheight,
      width: userInputwidth,
    );
    break;

  case MeasurementConversion.dm:
    triangle = Triangle.dm(
      height: userInputheight,
      width: userInputwidth,
    );
    break;

  case MeasurementConversion.m:
    triangle = Triangle.m(
      height: userInputheight,
      width: userInputwidth,
    );
    break;

  case MeasurementConversion.inch:
    triangle = Triangle.inch(
      height: userInputheight,
      width: userInputwidth,
    );
    break;

  case MeasurementConversion.feet:
    triangle = Triangle.feet(
      height: userInputheight,
      width: userInputwidth,
    );
    break;
}

double calculateArea (double height, double width){
  double area = 
  (height * width)/2;
  print (area / (userInputConversion!.factor * userInputConversion!.factor));
  return area;
}
calculateArea(triangle.heightInMm, triangle.widthInMm);
}