import 'enum.dart';

class Triangle {
  double _heightInMm;       // Noch überlegen ob mann ich heightInMm und height zusammenführe, 
  double _widthInMm;
  MeasurementConversion measurmentSystem;

  Triangle({required this._heightInMm, required this._widthInMm}) 
  : measurmentSystem = MeasurementConversion.mm;

  Triangle.cm({required double height,required double width})
  : _heightInMm = height * MeasurementConversion.cm.factor,
    _widthInMm = width * MeasurementConversion.cm.factor,
    measurmentSystem = MeasurementConversion.cm;

  Triangle.dm({required double height,required double width})
  : _heightInMm = height * MeasurementConversion.dm.factor,
    _widthInMm =  width * MeasurementConversion.dm.factor,
    measurmentSystem = MeasurementConversion.dm;

  Triangle.m({required double height,required double width})
  : _heightInMm = height * MeasurementConversion.m.factor,
    _widthInMm = width * MeasurementConversion.m.factor,
    measurmentSystem = MeasurementConversion.m;

  Triangle.inch({required double height,required double width})
  : _heightInMm = height * MeasurementConversion.inch.factor,
    _widthInMm = width * MeasurementConversion.inch.factor,
    measurmentSystem = MeasurementConversion.inch;

  Triangle.feet({required double height,required double width})
  : _heightInMm = height * MeasurementConversion.feet.factor,
    _widthInMm = width * MeasurementConversion.feet.factor,
    measurmentSystem = MeasurementConversion.feet;

   double get height {
    return _heightInMm;
    }

    double get width  {
    return _widthInMm;
    }

    double get heightInMm {
      return _heightInMm;
    }

    double get widthInMm {
      return _widthInMm;
    }
  }