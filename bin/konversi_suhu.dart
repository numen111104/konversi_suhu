import 'dart:io';
List<Map<dynamic,dynamic>> suhus = [
  {1: 'Reamur'},
  {2: 'Fahrenheit'},
  {3: 'Kelvin'},
  {4: 'Celcius'}
];

void main(List<String> arguments) {
 stdout.write("Masukkan suhu celcius sekarang: ");
 var celcius = num.parse(stdin.readLineSync()!);
   for(var i = 0; i < suhus.length; i++) {
     print("${suhus[i].keys.first}. ${suhus[i].values.first}");
   }
 stdout.write("Ingin dikonversi ke: ");
 var choice = int.parse(stdin.readLineSync()!);
 celciusToAny(celcius, choice);
}

void celciusToAny(num celcius, int choice) {
  num reamur = 4/5 * celcius;
  // cel -> fah = 9/5 * C + 32
  num fahrenheit = (9/5 * celcius) + 32;
  // cel -> kel = C + 273
  num kelvin = celcius + 273;
  switch(choice) {
    case 1:
      print("Suhu celcius: $celcius -> Suhu Reamur: $reamur");
      break;
    case 2:
      print("Suhu celcius: $celcius -> Suhu fahrenheit: $fahrenheit");
      break;
    case 3:
      print("Suhu celcius: $celcius -> Suhu Kelvin: $kelvin");
      break;
    default:
      print("Anda tidak memilih dengan benar");
  }
}

