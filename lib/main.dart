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

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  // Firebase初期化
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyAuthPage(),
    );
  }
}

class MyAuthPage extends StatefulWidget {
  @override
  _MyAuthPageState createState() => _MyAuthPageState();
}

class _MyAuthPageState extends State<MyAuthPage> {
  // 入力されたメールアドレス
  String newUserEmail = "";
  // 入力されたパスワード
  String newUserPassword = "";
  // 登録・ログインに関する情報を表示
  String infoText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(32),
          child: Column(
            children: <Widget>[
              TextFormField(
                // テキスト入力のラベルを設定
                decoration: InputDecoration(labelText: "メールアドレス"),
                onChanged: (String value) {
                  setState(() {
                    newUserEmail = value;
                  });
                },
              ),
              const SizedBox(height: 8),
              TextFormField(
                decoration: InputDecoration(labelText: "パスワード（６文字以上）"),
                // パスワードが見えないようにする
                obscureText: true,
                onChanged: (String value) {
                  setState(() {
                    newUserPassword = value;
                  });
                },
              ),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () async {
                  try {
                    // メール/パスワードでユーザー登録
                    final FirebaseAuth auth = FirebaseAuth.instance;
                    final UserCredential result =
                        await auth.createUserWithEmailAndPassword(
                      email: newUserEmail,
                      password: newUserPassword,
                    );

                    // 登録したユーザー情報
                    final User user = result.user!;
                    setState(() {
                      infoText = "登録OK：${user.email}";
                    });
                  } catch (e) {
                    // 登録に失敗した場合
                    setState(() {
                      infoText = "登録NG：${e.toString()}";
                    });
                  }
                },
                child: Text("ユーザー登録"),
              ),
              const SizedBox(height: 8),
              Text(infoText)
            ],
          ),
        ),
      ),
    );
  }
}





