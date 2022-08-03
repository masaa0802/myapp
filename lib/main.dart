import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                // 背景色
                color: Colors.blue,
                child: Text('blue'),
              ),
              Container(
                // 横幅
                width: 200,
                // 縦幅
                height: 50,
                color: Colors.blue,
                child: Text('200x200'),
              ),
              Container(
                // 内側の余白
                padding: EdgeInsets.all(8),
                color: Colors.blue,
                child: Text('padding'),
              ),
              Container(
                color: Colors.blue,
                child: Container(
                  // 外側の余白
                  margin: EdgeInsets.all(8),
                  color: Colors.green,
                  child: Text('margin'),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  // 枠線
                  border: Border.all(color: Colors.blue, width: 2),
                  // 角丸
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: EdgeInsets.all(8),
                child: Text('border'),
              ),
              Container(
                decoration: BoxDecoration(
                  // 背景画像
                  image: DecorationImage(
                    image: NetworkImage('https://placehold.jp/200x100.png'),
                  ),
                ),
                width: 200,
                height: 100,
                child: Text('image'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}