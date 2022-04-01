import 'package:flutter/material.dart';


class SearchListView extends StatelessWidget {
  final List searchIndexList;
  final List list;

  const SearchListView({Key? key, required this.searchIndexList, required this.list}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: searchIndexList.length,
        itemBuilder: (context, index) {
          index = searchIndexList[index];
          return Card(
              child: ListTile(
                  title: Text(list[index])
              )
          );
        }
    );
  }
}
