## Flutter Widget of the Week 2

---

## 6. FutureBuilder

https://api.flutter.dev/flutter/widgets/FutureBuilder-class.html

- 비동기 호출을 위한 클래스
- `Future<--->` 를 호출하기 위해 사용한다.

```dart
Future<String> _calculation = Future<String>.delayed(
  Duration(seconds: 2),
  () => 'Data Loaded',
);


futureBuilder() {
  return DefaultTextStyle(
    style: Theme.of(context).textTheme.headline2,
    textAlign: TextAlign.center,
    child: FutureBuilder<String>(
      future: _calculation, // a previously-obtained Future<String> or null
      builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
        List<Widget> children;
        if (snapshot.hasData) {
          children = <Widget>[
            Icon(
              Icons.check_circle_outline,
              color: Colors.green,
              size: 60,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Text('Result: ${snapshot.data}'),
            )
          ];
        } else if (snapshot.hasError) {
          children = <Widget>[
            Icon(
              Icons.error_outline,
              color: Colors.red,
              size: 60,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Text('Error: ${snapshot.error}'),
            )
          ];
        } else {
          children = <Widget>[
            SizedBox(
              child: CircularProgressIndicator(),
              width: 60,
              height: 60,
            ),
            const Padding(
              padding: EdgeInsets.only(top: 16),
              child: Text('Awaiting result...'),
            )
          ];
        }
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: children,
          ),
        );
      },
    ),
  );
```



## 7. FadeTransition

https://api.flutter.dev/flutter/widgets/FadeTransition-class.html

- `FadeTransition`은 opacity와 비슷하다.
- AnimationController와 같이 사용한다.



## 8. FloatingActionButton

https://api.flutter.dev/flutter/material/FloatingActionButton-class.html

- Floating 되어있는 button을 생성할 수 있다.
- Scaffold안에서 정의할 수 있으며, 
- `FloatingActionButton` property를 쓰면되고
- `FloatingActionButtonLocation`으로 위치를 정할 수 있다.

```dart
@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text('2nd Class'),
    ),
    body: futureBuilder(),
    floatingActionButton: FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: () => addCount(),
    ),
    floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
  );
}
```

