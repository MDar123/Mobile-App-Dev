import 'dart:io';

void main(){
  print("Enter age of Citizen");
  int age = int.parse(stdin.readLineSync()!);
  bool isCitizen=true;
  age>=18 && isCitizen?print("Eligible to Vote"):print("Not Eligible");
}