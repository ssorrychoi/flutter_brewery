## Flutter Provider(v.4.1.2)

---

### Provider 사용 하는 법.

https://pub.dev/packages/provider#-readme-tab-

✓ Provider가 v.3.x.x 버전에서 4.x.x로 넘어오면서 많이 바뀌었다.

1. Provider를 `pubspec.yaml` 에 설치한다.

```yaml
dependencies:
  provider: ^4.1.2
```

2. Install

```
$ flutter pub get
```

3. import 한다.

```
import 'package:provider/provider.dart';
```



---

플러터를 처음 설치하면 생기는 Counter 앱에서 Provider를 적용해본다.

1. 우선, Provider를 통해 공유할 데이터와 function을 가지고 있는 class를 만든다.

```dart
import 'package:flutter/material.dart';
/// extends ChangeNotifier 를 꼭 써줘야함!
class Counter extends ChangeNotifier {
  /// _count 변수
  int _count = 0;
  
  /// getCount() 함수를 통해 _count 변수값을 가져온다.
  int getCount() => _count;
  
  /// 증가시키는 함수
  int incrementCount() {
    _count++;
    notifyListeners(); /// 이 함수를 통해 계속 주시한다.
  }
  
  /// 숫자를 리셋 시키는 함수
  int resetCount() {
    _count = 0;
    notifyListeners();
  }
  
  /// 감소하는 함수
  int minusCount() {
    _count--;
    notifyListeners();
  }
}
```



2. 처음 해야할 것은 `ChangeNotifierProvider` 위젯으로 감싸준다.

```dart
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ChangeNotifierProvider<Counter>(
        create: (context) => Counter(),
        child: MyHomePage(title: 'Flutter Demo Home Page')),
    );
  }
}
```

`ChangeNotifierProvider<Counter>` 로 Counter를 바라보겠다는 함수를 감싸준다. 이렇게 감싸게 되면 `MyHomePage`의 child 위젯에 대해서는 전부 Counter에 접근이 가능해진다.



3. `Consumer` 와 `Provider.of<Counter>(context)` 로 접근해서 사용이 가능하다.

```dart
/// Consumer 방식
Consumer<Counter>(
  builder: (context, value, child) => Text(
    value.getCount().toString(),
    style: Theme.of(context).textTheme.headline4,
  )),

/// Provider.of(context) 방식
Text(Provider.of<Counter>(context).getCount().toString(),
     style: Theme.of(context).textTheme.headline4),
```

끝!