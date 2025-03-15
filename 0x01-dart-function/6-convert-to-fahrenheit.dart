
//Using normal for loop to convert temperatures from Celsius to Fahrenheit
//List<double> convertToF(List<double> temperaturesInC){
//  for(int i = 0; i < temperaturesInC.length; i++){
//    temperaturesInC[i] = double.parse((temperaturesInC[i] * 9/5 + 32).toStringAsFixed(2));
//  }
//  return temperaturesInC;
//}

//using map() method to convert temperatures from Celsius to Fahrenheit
List<double> convertToF(List<double> temperaturesInC){
  return temperaturesInC.map((temp) => double.parse((temp * 9/5 + 32).toStringAsFixed(2))).toList();
}

