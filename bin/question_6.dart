void main() {
  int a = 5;
  int b = 7;
  
  var c = a * b;
  print(c);
  var d;
  d ??= a + b; 
  print(d);
  d ??= a - b; 
  // Value is not assigned as it is not null
  print(d); 
  //here output will be 12
}
