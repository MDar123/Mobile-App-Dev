import 'dart:io';

void main(){
print("Enter Amount ");
int amount=int.parse(stdin.readLineSync()!);
print("Enter User");
var user =stdin.readLineSync();
user=="Premium"||amount>=1000?print("You are Eligble for Discount"):print("Not Eligble");
}