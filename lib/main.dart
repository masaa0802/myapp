// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {

//     final List<Map<String, dynamic>> listItems = [
//     {
//       'text': 'Item 1',
//       'color': Colors.blue[600],
//     },
//     {
//       'text': 'Item 2',
//       'color': Colors.blue[300],
//     },
//     {
//       'text': 'Item 3',
//       'color': Colors.blue[100],
//     },
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(primarySwatch: Colors.blue),
//       home: Scaffold(
//         appBar: AppBar(
//           // 左側のアイコン
//           leading: Icon(Icons.arrow_back),
//           // タイトルテキスト
//           title: Text('Hello'),
//           // 右側のアイコン一覧
//           actions: <Widget>[
//             IconButton(
//               onPressed: () {},
//               icon: Icon(Icons.favorite),
//             ),
//             IconButton(
//               onPressed: () {},
//               icon: Icon(Icons.more_vert),
//             ),
//           ],
//         ),
//         floatingActionButton: FloatingActionButton(
//         backgroundColor: Colors.black,
//         onPressed: () {},
//         child: Icon(Icons.add),
//       ),
//         body: Column(
//           children: <Widget>[

//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: <Widget>[
//                 ElevatedButton(
//                   onPressed: null,
//                   child: Text('disabled'),
//                 ),
//                 ElevatedButton(
//                   onPressed: () {},
//                   child: Text('enabled'),
//                 ),
//                 ElevatedButton(
//                   onPressed: () {},
//                   style: ElevatedButton.styleFrom(
//                     primary: Colors.red,
//                     elevation: 16,
//                   ),
//                   child: Text('enabled'),
//                 ),
//               ],
//             ),
            
//             Container(
//               padding: EdgeInsets.only(top: 32),
//               child: Text('IconButton'),
//             ),
            
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: <Widget>[
//                 IconButton(
//                   onPressed: () {},
//                   icon: Icon(Icons.thumb_up),
//                 ),
//                 IconButton(
//                   color: Colors.pink,
//                   onPressed: () {},
//                   icon: Icon(Icons.favorite),
//                 ),
//                 IconButton(
//                   iconSize: 64,
//                   onPressed: () {},
//                   icon: Icon(Icons.flight),
//                 ),
//               ],
//             ),

//             Container(
//               padding: EdgeInsets.only(top: 32),
//               child: Text('アイコン＋テキスト'),
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: <Widget>[
//                 TextButton.icon(
//                   onPressed: () {},
//                   icon: Icon(Icons.thumb_up),
//                   label: Text('Good'),
//                 ),
//                 OutlinedButton.icon(
//                   onPressed: () {},
//                   icon: Icon(Icons.favorite, color: Colors.pink),
//                   label: Text('Like'),
//                 ),
//                 ElevatedButton.icon(
//                   onPressed: () {},
//                   icon: Icon(Icons.flight),
//                   label: Text('Flight'),
//                 ),
//               ],
//             ),

//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: MyWidget(),
        ),
      ),
    );
  }
}

// StatefulWidgetを継承するとStateを扱える
// このWidgetを表示すると、Stateを元にUIが作成される
class MyWidget extends StatefulWidget {
  // 使用するStateを指定
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

// Stateを継承して使う
class _MyWidgetState extends State<MyWidget> {
  // データを宣言
  int count = 0;

  // データを元にWidgetを作る
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(count.toString()),
        TextButton(
          onPressed: () {
            // データを更新する時は setState を呼ぶ
            setState(() {
              // データを更新
              count = count + 1;
            });
          },
          child: Text('カウントアップ'),
        ),
      ],
    );
  }
}




