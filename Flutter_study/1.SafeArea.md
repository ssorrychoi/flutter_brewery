## 1. SafeArea

https://api.flutter.dev/flutter/widgets/SafeArea-class.html

위젯은 각 OS에 따라 침범을 피하기 위한 충분한 패팅에 의한 위젯의 child를 넣는다.

예를들면, 이렇게하면 화면 상단의 statusbar를 피할 수있을만큼 child가 들여 쓰기된다. 또한 이것은 iphoneX의 노치바나, 다른 디스플레이의 물리적인 기능을 피하는데 필요한만큼 child를 들여쓰기 한다. 최소한 padding이 명시되었을때, 더 나은 최소한의 padding이나 safe area padding이 적용될 것이다.

Widget의 가장 최상단에 `SafeArea` 로 덮는다.

>  ### Inheritance
>
> Object > DiagnositicableTree > Widget > StatelessWidget > SafeArea

```dart
class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child : Scaffold(
        appBar: AppBar(
          title: Text('Widget of the Week'),
        ),
        body: SafeArea(child: Center(child: Text('This is Widget of the week'))),
      )
    );
  }
}
```

