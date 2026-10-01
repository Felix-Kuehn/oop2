enum  MeasurementConversion{
  mm (1),
  cm(10),
  dm(100),
  m(1000),
  inch(25.4),
  feet(304.8);

 final double factor;

 const MeasurementConversion(this.factor);
}