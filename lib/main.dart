import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

    final List<Map<String, dynamic>> listItems = [
    {
      'text': 'Item 1',
      'color': Colors.blue[600],
    },
    {
      'text': 'Item 2',
      'color': Colors.blue[300],
    },
    {
      'text': 'Item 3',
      'color': Colors.blue[100],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          // 左側のアイコン
          leading: Icon(Icons.arrow_back),
          // タイトルテキスト
          title: Text('Hello'),
          // 右側のアイコン一覧
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.favorite),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_vert),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {},
        child: Icon(Icons.add),
      ),
        body: Column(
          children: <Widget>[
           // タイトル・サブタイトル・画像・アイコン等を含めたアイテムが作れる
            ListTile(
              leading: Image.network('https://placehold.jp/50x50.png'),
              title: Text('ListTile'),
              subtitle: Text('subtitle'),
              trailing: Icon(Icons.more_vert),
            ),
            // 影のついたカードUIが作れる
            Card(
              child: Container(
                height: 60,
                width: double.infinity,
                child: Text('Card'),
              ),
            ),
            // 組み合わせることもOK
            Card(
              child: ListTile(
                leading: Image.network('https://placehold.jp/50x50.png'),
                title: Text('Card and ListTile'),
                subtitle: Text('subtitle'),
                trailing: Icon(Icons.more_vert),
              ),
            ),

            Container(
              width: double.infinity,
              height: 60,
              color: Colors.grey[200],
              child: Column(
                children: <Widget>[
                  Text('first line'),
                  Text('second line'),
                ],
              ),
            ),

            Container(
              width: double.infinity,
              height: 70,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('***'),
                  Text('中央寄せ'),
                ],
              ),
            ),

            Container(
              width: double.infinity,
              height: 60,
              color: Colors.grey[200],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text('***'),
                  Text('下寄せ'),
                ],
              ),
            ),

            Container(
              width: double.infinity,
              height: 60,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text('***'),
                  Text('均等に配置'),
                ],
              ),
            ),

            Container(
              width: double.infinity,
              height: 60,
              color: Colors.grey[200],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('***'),
                  Text('左寄せ'),
                ],
              ),
            ),

            Container(
              width: double.infinity,
              height: 60,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text('***'),
                  Text('右寄せ'),
                ],
              ),
            ),

            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage('https://placehold.jp/200x100.png'),
                ),
                ),
                child: Text('image'),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                  onPressed: null,
                  child: Text('disabled'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('enabled'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                    elevation: 16,
                  ),
                  child: Text('enabled'),
                ),
              ],
            ),
            
            Container(
              padding: EdgeInsets.only(top: 32),
              child: Text('IconButton'),
            ),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.thumb_up),
                ),
                IconButton(
                  color: Colors.pink,
                  onPressed: () {},
                  icon: Icon(Icons.favorite),
                ),
                IconButton(
                  iconSize: 64,
                  onPressed: () {},
                  icon: Icon(Icons.flight),
                ),
              ],
            ),

            Container(
              padding: EdgeInsets.only(top: 32),
              child: Text('アイコン＋テキスト'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                TextButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.thumb_up),
                  label: Text('Good'),
                ),
                OutlinedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.favorite, color: Colors.pink),
                  label: Text('Like'),
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.flight),
                  label: Text('Flight'),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}


