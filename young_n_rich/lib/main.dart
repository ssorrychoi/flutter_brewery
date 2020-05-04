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
      body: Center(child:Image(image: AssetImage('images/diamond.png'),))
    )),
  );
}

//Image(image: NetworkImage('https://w.namu.la/s/49769a55eee7fb028f3931ce19df52762d218d8e0605faa557d0b40a4790854c59b951e9fb6dd86a296a1aa60312b741dbb80b4b5258bc15401a554d34a983b52cc6784016d02b2f126c194a6b8e4fe4ea68021f8b307713c1e9516298dde27e')
