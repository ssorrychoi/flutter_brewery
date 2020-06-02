## StatusBar 색상 

---

statusBar를 다크모드에 따라 흰색, 검정색으로 설정하는 방법.

> 1. `appBar`에서 `brightness`로 설정 해주면 된다.

```
return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,  //<--Here!!!
        title: Text(widget.title),
      ),
```


> 2. 더 상단의 `MaterialApp`에서 `appBarTheme` 속성을 이용해 설정한다.

```
...
MaterialApp(
    themeMode: ThemeMode.light, // Change it as you want
    theme: ThemeData(
        primaryColor: Colors.white,
        primaryColorBrightness: Brightness.light,
        brightness: Brightness.light,
        primaryColorDark: Colors.black,
        canvasColor: Colors.white,
        // next line is important!
        appBarTheme: AppBarTheme(brightness: Brightness.light)),
    darkTheme: ThemeData(
        primaryColor: Colors.black,
        primaryColorBrightness: Brightness.dark,
        primaryColorLight: Colors.black,
        brightness: Brightness.dark,
        primaryColorDark: Colors.black,      
        indicatorColor: Colors.white,
        canvasColor: Colors.black,
        // next line is important!
        appBarTheme: AppBarTheme(brightness: Brightness.dark)),
...
```

참고 : 
https://stackoverflow.com/questions/58325556/flutter-how-to-change-the-statusbar-text-color-in-dark-mode