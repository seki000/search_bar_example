import 'package:flutter/material.dart';
import 'package:search_bar_example/parts/default_Listview.dart';
import 'package:search_bar_example/parts/search_Listview.dart';
import 'package:search_bar_example/parts/search_textfield.dart';



class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _searchBoolean = false;  //虫眼鏡アイコンタップでTrueになりタイトルが検索バーに代わる、×アイコンタップでfalseになり検索バーがタイトルになる
  List<int> _searchIndexList = [];  //検索した言葉を入れるためのリスト

  List<String> _list = [
    "財布",
    "ハンカチ",
    "ポケットティッシュ",
    "保険証",
    "免許証",
    "筆箱",
    "Note",
    "EcoBag",
    "Glasses",
    "SmartPhone",
    "Mask",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: !_searchBoolean ? Text(widget.title) :
            SearchTextField(                //検索バー
              onChanged: (inputText) {        //検索ボタンを押して検索実行はonSubmittedを使う
                  setState(() {
                    _searchIndexList = [];          //_searchIndexListを初期化するため
                    for (int i = 0; i < _list.length; i++) {  //このfor文の中のif文は、リストの要素（_list[i]）に検索された文字（s）が含まれていれば
                      if (_list[i].contains(inputText))       //、_searchIndexListにindex（i）を追加するという処理です。
                        _searchIndexList.add(i);
                      }
                    }
                  );
              },
                ),
            actions: !_searchBoolean
                ? [
              IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    setState(() {
                      _searchBoolean = true;
                      _searchIndexList = [];   //_searchIndexListを初期化するため
                    });
                  })
            ]
                : [
              IconButton(
                  icon: Icon(Icons.clear),
                  onPressed: () {
                    setState(() {
                      _searchBoolean = false;
                    });
                  }
              )
            ]
        ),
        body: !_searchBoolean ?      //デフォルトと検索用のリストビューを2つ作って、searchBooleanで切り替え
            DefaultListView(list: _list) :
            SearchListView(searchIndexList: _searchIndexList, list: _list)
    );
  }
}