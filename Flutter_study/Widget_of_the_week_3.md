## Widget of the Week

---

## 11. SliverAppBar

https://api.flutter.dev/flutter/material/SliverAppBar-class.html

- `SliverAppBar` 의 여러가지 형태를 위 url에서 볼 수 있다.
- 일반적인 `Scaffold` 의 `appbar` 는 고정되어 있고 움직이지 않지만 SliverAppBar는 움직이는 특징이 있다.

```dart
SliverAppBar(
  expandedHeight: 200.0,
  floating: false,
  pinned: true,
  flexibleSpace: FlexibleSpaceBar(
    centerTitle: true,
    title: Text("SliverAppBar",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                )),
    background: Image.network(
      "https://img.insight.co.kr/static/2017/01/17/700/626K4KSUHT0FL029P107.jpg",
      fit: BoxFit.cover,
    )),
),
```

## 12. SliverList & SliverGrid

https://api.flutter.dev/flutter/widgets/SliverList-class.html

- `ListView` 나 `GridView` 를 통해 개별적으로 스크롤view를 만들 수 있다.
- 전체적으로 스크롤하고 싶을때 사용하는 것이 `SliverList` 또는 `SliverGrid`이다.

```dart
import 'dart:math';

import 'package:flutter/material.dart';

class SliverListEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.green,
            floating: true,
            pinned: true,
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text(
                "SliverList Widget",
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              background: Container(
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(color: Colors.black, width: 1))),
              ),
            )),
          SliverList(
            ///Use SliverChildListDelegate and provide a list
            ///of widgets if the count is limited
            ///
            ///Lazy building of list
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return listItem(getRandomColor(), "Sliver List item: $index");
              },
            ),
          )
        ],
      ),
    );
  }

  Widget listItem(Color color, String title) => Container(
    height: 100.0,
    color: color,
    child: Center(
      child: Text(
        "$title",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.black,
          fontSize: 14.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );

  Color getRandomColor() {
    Random random = new Random();
    return Color((random.nextDouble() * 0xFFFFFF).toInt() << 0)
      .withOpacity(1.0);
  }
}

```

