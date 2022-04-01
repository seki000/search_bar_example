import 'package:flutter/material.dart';

class DefaultListView extends StatelessWidget {

  final List list;
  const DefaultListView({Key? key, required this.list}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  return ListView.builder(
      itemCount: list.length,
      itemBuilder: (context, index) {
        return Card(
            child: ListTile(
                title: Text(list[index])
            )
        );
      }
  );
  }
}


// Widget _defaultListView() {
//   return ListView.builder(
//       itemCount: _list.length,
//       itemBuilder: (context, index) {
//         return Card(
//             child: ListTile(
//                 title: Text(_list[index])
//             )
//         );
//       }
//   );
// }