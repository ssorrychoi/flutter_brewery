import 'package:flutter/material.dart';

class FadeInImageEx extends StatefulWidget {
  @override
  _FadeInImageExState createState() => _FadeInImageExState();
}

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
