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



## 9. PageView

https://api.flutter.dev/flutter/widgets/PageView-class.html

PageView는 여러 페이지를 한번에 묶어서 볼 수 있게 해준다.

1. PageController를 생성한다
2. initialPage를 설정한 후,
3. PageView를 생성한다.
4. PageView 안의 속성으로 controller에 PageController를 설정한다.

```dart
class _PageViewExState extends State<PageViewEx> {
  /// 몇번째 페이지를 메인 페이지로 할건지 선택.
  PageController _controller = PageController(initialPage: 0);

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
//        scrollDirection: Axis.vertical, // 세로
        children: <Widget>[ExScreen1(), ExScreen2(), ExScreen3()],
      ),
    );
  }
}

```

※ `initialpage` 를 설정하면 어떤 페이지를 처음 페이지로 할 것인지를 정하는 것.

​	-> 1로 설정하면, 0,1,2 페이지 중 1이 메인페이지로 보이게 되는 것.  



## 10. Table

https://api.flutter.dev/flutter/widgets/Table-class.html

테이블을 만들때 사용한다. Ex) 달력

- 하나의 Row를 가질땐 `Row` widget으로 한다.
- 하나의 Column을 가질땐 `SliverList` 또는 `Column` widget으로 한다.