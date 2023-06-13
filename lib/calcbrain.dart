import 'dart:math';

class CalcBrain {

  CalcBrain({required this.height, required this.weight});

  int height;
  int weight;

  double _bmi=0;

  String calculateBMI() {
    _bmi = weight / pow((height / 100), 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'OverWeight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Under Weight';
    }
  }

  String getMeaning() {
    if (_bmi >= 25) {
      return 'Try Exercise';
    } else if (_bmi > 18.5) {
      return 'Nice';
    } else {
      return 'Eat a lot';
    }
  }
}
