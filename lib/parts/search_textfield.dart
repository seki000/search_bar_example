import 'package:flutter/material.dart';


class SearchTextField extends StatefulWidget {
  final ValueChanged onChanged;

  const SearchTextField({Key? key, required this.onChanged,}) : super(key: key);

  @override
  State<SearchTextField> createState() => _SearchTextFieldState();
}

class _SearchTextFieldState extends State<SearchTextField> {
  @override
  Widget build(BuildContext context) {
      return TextField(
        onChanged: widget.onChanged,
    // onChanged: (String inputText) {
    //   setState(() {
    //     widget.searchIndexList;
    //     for (int i = 0; i < widget.list.length; i++) {
    //       if (widget.list[i].contains(inputText)) {
    //         widget.searchIndexList.add(i);
    //       }
    //     }
    //   });
    // },
    autofocus: true,
    cursorColor: Colors.white,
    style: TextStyle(
      color: Colors.white,
      fontSize: 20,
    ),
    textInputAction: TextInputAction.search,
    decoration: InputDecoration(
      enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white)
      ),
      focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white)
      ),
      hintText: '検索できます',
      hintStyle: TextStyle(
        color: Colors.white60,
        fontSize: 20,
      ),
    ),
  );
  }
}


//
//
// Widget _searchTextField() {
//   return TextField(
//     onChanged: (String s) {
//       setState(() {
//         _searchIndexList = [];
//         for (int i = 0; i < _list.length; i++) {
//           if (_list[i].contains(s)) {
//             _searchIndexList.add(i);
//           }
//         }
//       });
//     },
//     autofocus: true,
//     cursorColor: Colors.white,
//     style: TextStyle(
//       color: Colors.white,
//       fontSize: 20,
//     ),
//     textInputAction: TextInputAction.search,
//     decoration: InputDecoration(
//       enabledBorder: UnderlineInputBorder(
//           borderSide: BorderSide(color: Colors.white)
//       ),
//       focusedBorder: UnderlineInputBorder(
//           borderSide: BorderSide(color: Colors.white)
//       ),
//       hintText: 'Search',
//       hintStyle: TextStyle(
//         color: Colors.white60,
//         fontSize: 20,
//       ),
//     ),
//   );
// }