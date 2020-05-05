## Section3. How to Create Flutter Apps from Scratch

---

`YNG & RICH` Project

1. Creating a New Flutter Project from Scratch

`main.dart`

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Center(
        child: Text('Wurrup World!'),
      ),
    ),
  );
}
```

![image](https://user-images.githubusercontent.com/43080040/80932165-3abc1800-8df9-11ea-9e85-b8c613f019d9.png)

Widget Tree

![image](https://user-images.githubusercontent.com/43080040/80932204-8078e080-8df9-11ea-873d-ccb25c8f7acb.png)

2. Scaffolding a Material App

`Scaffold()`

> Implements the basic material design visual layout structure.
>
> This class provides APIs for showing drawers, snack bars, and bottom sheets.
>
> To display a snackbar or a persistent bottom sheet, obtain the [ScaffoldState](https://api.flutter.dev/flutter/material/ScaffoldState-class.html) for the current [BuildContext](https://api.flutter.dev/flutter/widgets/BuildContext-class.html) via [Scaffold.of](https://api.flutter.dev/flutter/material/Scaffold/of.html) and use the [ScaffoldState.showSnackBar](https://api.flutter.dev/flutter/material/ScaffoldState/showSnackBar.html) and [ScaffoldState.showBottomSheet](https://api.flutter.dev/flutter/material/ScaffoldState/showBottomSheet.html) functions.

Scaffold에는 `appbar`, `body`, `background` 등 여러가지 property가 들어갈 수 있다.

참고 : https://api.flutter.dev/flutter/material/Scaffold-class.html

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.blueGrey[700],
      appBar: AppBar(
          title: Text(
            'YNG & RICH',
            style: TextStyle(color: Colors.blue),
          ),
          backgroundColor: Colors.blueGrey[900]),
      body: Center(child:Image(image: NetworkImage('http://yngandrich.com/wp-content/themes/yngnrich/assets/images/logo_symbol_text.png') ,))
    )),
  );
}
```

![image](https://user-images.githubusercontent.com/43080040/80933142-5f19f380-8dfd-11ea-8063-a85685419e09.png)



3. Working with Assets in Flutter & the Pubspec file

assets을 이용해 img를 추가하는 방법

`pubspec.yaml` 에서

```yaml
  # To add assets to your application, add an assets section, like this:
  # assets:
  #   - images/a_dot_burr.jpeg
  #   - images/a_dot_ham.jpeg
```

이 부분에서 주석을 제거한 후, assets 가 **맨 왼쪽으로부터 띄어쓰기가 2칸만 되어있는지**를 확인해야한다.

```yaml
  assets:
     - images/diamond.png
     - images/.                => 둘 다 가능
```



4. How to Add App Icons to the IOS and Android Projects

App icon : https://appicon.co/

