import 'dart:io';

void main (){
  stdout.write("Masukkan elemen set A (pisahkan dengan koma): ");
  Set<String> setA = stdin.readLineSync()!.split(',').map((e) => e.trim()).toSet();

  stdout.write("Masukkan elemen set B (pisahkan dengan koma): ");
  Set<String> setB = stdin.readLineSync()!.split(',').map((e) => e.trim()).toSet();

  Set<String> union = setA.union(setB);
  Set<String> intersection = setA.intersection(setB);

  print("Set A: $setA");
  print("Set B: $setB");
  print("Union: $union");
  print("Intersection: $intersection");
}