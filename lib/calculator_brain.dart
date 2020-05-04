import 'dart:math';

class CalculatorBrain {

  CalculatorBrain({this.height,this.weight});
  final int height;
  final int weight;

  double _bmi;


  String calculateBMI(){
    _bmi = weight / pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResults() {
    if(_bmi >= 25) {
      return 'Over-weight';
    }
    else if(_bmi > 18.5){
      return 'normal';
    }
    else {
      return 'under-weight';
    }
  }

  String getInterpretation(){
     if(_bmi >= 25) {
      return 'you have a higher than normal body weight. try to exercise more.';
    }
    else if(_bmi > 18.5){
      return 'you have a normal body weight.';
    }
    else {
      return 'you have a lower than normal body weight.';
    }
  }

}