## Dart 언어 문법

https://dart.dev/#try-dart

---

## 1. Dart언어의 data 타입

```dart
var name = 'Voyager I';
var year = 1977;
var antennaDiameter = 3.7;
var flybyObjects = ['Jupiter','Saturn','Uranus','Neptune'];
var image = {
	'tags' : ['saturn'],
	'url' : '//path/to/saturn.jpg'
}
```

```dart
String name = 'Voyager I';
int year = 1977;
double antennaDiameter = 3.7;
List<String> flybyObjects = ['Jupiter','Saturn','Uranus','Neptune'];
Map<String,Object> image = {
	'tags' : ['saturn'],
	'url' : '//path/to/saturn.jpg'
}
```



## 2. functions

```dart
// A function declaration.
int timesTwo(int x) {
  return x * 2;
  // return 되는 타입과 function의 타입이 같아야 한다.
}

// Arrow syntax is shorthand for `{ return expr; }`.
// 화살표 함수는 1줄짜리 일때만 가능.
int timesFour(int x) => timesTwo(timesTwo(x));

// Functions are objects.
// function안에 parameter로 function을 가져올 수 있다.
int runTwice(int x, Function f) {
  for (var i = 0; i < 2; i++) {
    x = f(x);
  }
  return x;
}

main() {
  // 변수값을 표시할때는 ${}를 한다.
  print("4 times two is ${timesTwo(4)}");
  print("4 times four is ${timesFour(4)}");
  print("2 x 2 x 2 is ${runTwice(2, timesTwo)}");
}
```



## 3. Control Flow

```dart
bool isEven(int x) {
  // An if-else statement.
  if (x % 2 == 0) {
    return true;
  } else {
    return false;
  }
}

List<int> getEvenNumbers(Iterable<int> numbers) {
  // numbers는 리스트를 가리킨다. 리스트의 갯수는 정해지지 않은.
  var evenNumbers = <int>[];

  // A for-in loop.
  for (var i in numbers) {
    // numbers의 내용을 하나씩 던진다.
    // A single-line if statement.
    if (isEven(i)) evenNumbers.add(i);
  }
  return evenNumbers;
}

main() {
  var numbers = List.generate(10, (i) => i);
  print(getEvenNumbers(numbers));
}

```



## 4. String

```dart
main() {
  print('a single quoted string');
  print("a double quoted string");
  // ''single quoted 랑 "" double quoted는 같음.

  // Strings can be combined with the + operator.
  print('cat' + 'dog');

  // Triple quotes define a multi-line string.
  print('''triple quoted strings
are for multiple lines''');

  // Dart supports string interpolation.
  const pi = 3.14;
  print('pi is $pi') // 변수만 사용할때는 변수 앞에 $만 붙인다.
  print('tau is ${2 * pi}');
}
  
```



## 5. Class

```dart
class Car{
  int seats;
  String color;
  
  Car(int sts, String clr){
    this.seats = sts;
    this.color = clr;
  }
}

main(){
  Car newCar = Car(5,'red');
  
  print('seat  : ${newCar.seats}'); // seat : 5
  print('color : ${newCar.color}'); // color : red
}
```

```dart
class Car{
  int seats;
  String color;
  
  Car(int sts, String clr){
    this.seats = sts;
    this.color = clr;
  }
  
  // [ ]대괄호를 통해 기본값을 설정할 수 있다. 
//   Car(int sts, [String clr = 'black']){ 
//     this.seats = sts;
//     this.color = clr;
//   }
  
  printCar(){
    print('seat  : $seats'); // seat : 5
    print('color : $color'); // color : red
  }
}

main(){
  Car newCar = Car(5,'red');
  
  newCar.printCar();
}

```

