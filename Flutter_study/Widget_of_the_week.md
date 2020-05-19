## Flutter Widget of the Week 1

---

## 1. SafeArea

https://api.flutter.dev/flutter/widgets/SafeArea-class.html

- 디바이스가 다양한 요즘, 아이폰과 안드로이드의 화면의 모양이 다 각기 다르다.
- 따라서 SafeArea위젯이 그 모양을 전부 잡아준다.

일반적으로 Scaffold 안에서 SafeArea를 사용한다.

```dart
class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Widget of the Week'),
      ),
      body: SafeArea(child: Center(child: Text('This is Widget of the week'))),
    );
  }
}
```



## 2. Expanded

https://flutter.dev/docs/codelabs/layout-basics#expanded-widget

- 남아있는 공간을 알아서 채워줌.
- css에서의 `flex` 를 먹일수도있음.

```dart
class FirstWeek extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('1st Week'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Text('First Week'),
          ),
          Row(
            children: <Widget>[
              FlatButton(
                color: Colors.red, onPressed: () {}, child: Text('Red')),
              Expanded(
                child: FlatButton(
                  color: Colors.orange,
                  onPressed: () {},
                  child: Text('Orange')),
              ),
              FlatButton(
                color: Colors.yellow,
                onPressed: () {},
                child: Text('Yellow')),
              FlatButton(
                color: Colors.green, onPressed: () {}, child: Text('Green')),
            ],
          )
        ],
      ),
    );
  }
}
```



## 3. Wrap

https://api.flutter.dev/flutter/widgets/Wrap-class.html

- Wrap 클래스는 디바이스를 벗어났을때, 줄내림을 해줄때 사용한다.
- 자동으로 내려감. 
- Ex) 댓글, 글이 길때, 줄내림을 할때 사용.

```dart
Wrap(
  children: <Widget>[
    SizedBox(
      width: 200,
      child: FlatButton(
        color: Colors.blue,
        onPressed: () {},
        child: Text('Blue'),
      ),
    ),
    SizedBox(
      width: 250,
      child: FlatButton(
        color: Colors.blueAccent,
        onPressed: () {},
        child: Text('Navy'),
      ),
    ),
    SizedBox(
      width: 300,
      child: FlatButton(
        color: Colors.purple,
        onPressed: () {},
        child: Text('Purple'),
      ),
    )
  ],
)
```



## 4. AnimatedContainer

https://flutter.dev/docs/cookbook/animation/animated-container

- AnimatedContainer의 속성으로 `duration` 을 이용해 시간차를 두어 애니메이션처럼 보이게 하는 위젯이다.
- cookbook에서 했었음.



## 5. Opacity

https://flutter.dev/docs/cookbook/animation/opacity-animation

- Opacity는 투명도를 말한다.
- ios는 보이게하지만, Aos에서는 안보이고 싶을때, 사용할 수 있다.

```dart
Row(
  children: <Widget>[
    FlatButton(
      color: Colors.red, onPressed: () {}, child: Text('Red')),
    Opacity(
      opacity: 0,
      child: SizedBox(
        width: 230,
        child: FlatButton(
          color: Colors.lightBlueAccent,
          onPressed: () {},
          child: Text('Blue')),
      ),
    ),
    FlatButton(
      color: Colors.black,
      onPressed: () {},
      child: Text(
        'Black',
        style: TextStyle(color: Colors.white),
      )),
  ],
),
```

<img width="409" alt="스크린샷 2020-05-18 20 33 21" src="https://user-images.githubusercontent.com/43080040/82208674-e8c1d900-9946-11ea-819d-a034d369080c.png">

