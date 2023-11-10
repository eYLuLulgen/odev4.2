import 'dart:io';

void main() {
  List<int> integerList = [];

  print("Tamsayıları girmek için bir boşluk bırakarak yazın. Çıkmak için 'a' tuşuna basın:");

  while (true) {
    String input = stdin.readLineSync() ?? "";
    if (input.toLowerCase() == "a") {
      break;
    }

    try {
      int number = int.parse(input);
      integerList.add(number);
    } catch (e) {
      print("Geçersiz giriş. Lütfen bir tamsayı girin.");
    }
  }

  if (integerList.isNotEmpty) {
    List<int> multipliedList = multiplyListByTwo(integerList);
    print("Başlangıç Listesi: $integerList");
    print("Çarpılmış Liste: $multipliedList");
  } else {
    print("Boş liste. Hiçbir işlem yapılmadı.");
  }
}

List<int> multiplyListByTwo(List<int> inputList) {
  List<int> result = [];

  for (int number in inputList) {
    result.add(number * 2);
  }

  return result;
}

