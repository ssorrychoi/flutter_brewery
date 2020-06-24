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



## 13. FadeInImage

https://api.flutter.dev/flutter/widgets/FadeInImage-class.html

- 네트워크에서 이미지를 가져올때, 시간이 걸린다.
- 시간이 걸릴때, 다운로드되길 기다리는 것이 아니라 `FadeInImage`를 통해 자연스럽게 연결해준다.

```dart
class _FadeInImageExState extends State<FadeInImageEx> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Fade In Image'),),
      body: FadeInImage.assetNetwork(
        fadeInCurve: Curves.bounceIn,
        placeholder: 'assets/images/loading.jpg',
        image: 'https://blog.codemagic.io/uploads/Codemagic-io_Blog_Flutter-Versus-Other-Mobile-Development-Frameworks_2.png',
      ),
    );
  }
}
```



## 14. StreamBuilder

https://api.flutter.dev/flutter/widgets/StreamBuilder-class.html

- BLoC패턴할때, 쓰인다.
- 특정 어떤 값을 계속 바라보고 있다가, 변경이 되거나 값이 들어오면 변경시켜주는 것이다.
- 현재, BLoC패턴보단 Provider를 구글에서 밀고 있으므로 생략한다.



## 15. InheritedModel

https://api.flutter.dev/flutter/widgets/InheritedModel-class.html

- 이것도 state 관리 방법이다.



## 16. ClipRRect

https://api.flutter.dev/flutter/widgets/ClipRRect-class.html

- 직사각형 위젯의 테두리를 둥글게 만들어 주는 위젯이다.
- 이미지나, 각진 버튼 등에 사용될 수 있다.

```dart
ClipRRect(
  borderRadius: BorderRadius.circular(20),
  child: Image(image: AssetImage('assets/images/dtla.jpg'),)),
ClipOval(
  child: Image(image: AssetImage('assets/images/dtla.jpg'),)
),
```



## 17. Hero

https://flutter.dev/docs/development/ui/animations/hero-animations

> ### What you'll Learn
>
> - hero( ) 는 스크린들 사이에 있는 파일을 위젯에 보낸다.
> - Flutter의 Hero 위젯을 사용함으로써 hero 애니메이션을 만든다.
> - 하나의 스크린에서 다른 곳으로 hero를 날린다.
> - 한 스크린에서 다른 스크린으로 날아가는 동안 타원형에서 사각형으로 hero의 모양의 변화를 준다.
> - 플러터에서 Hero 위젯은 흔히 `shared element transitions` 이나 `shared element animations`로 알려져있다.

아마도 `Hero` 애니메이션을 여러번 봤을 것이다. 예를 들면, 판매하는 물건의 대표 썸네일 리스트가 뿌려져 있는 화면이다. 물건을 클릭하면 "Buy"버튼과 더 자세한 내용이 새로운 화면에 날아간다. 한 화면에서 다른 화면으로 이미지가 날아가는 것을 플러터에서 `hero animation` 이라고 부르는데, 비록 같은 동작은 가끔 `shared element transition` 이라고 지칭하기도 한다.

> 예시)
>
> - Standard hero animation
> - Radial hero animation

### Standard hero animations

standard hero animation은 hero를 하나의 라우트에서 새로운 라이트로 날리는데 주로 다른 사이즈로 다른 위치에 보낸다.

```

```



### Radial hero animation

radial hero animation은 타원형에서 사각형으로 모양을 바뀌게 보낸다.

```

```



## 18. CustomPaint

https://api.flutter.dev/flutter/widgets/CustomPaint-class.html

## 19. Tooltip



