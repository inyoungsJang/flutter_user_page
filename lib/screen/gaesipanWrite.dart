import 'package:flutter/material.dart';

class GaesipanWrite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Container(
      child: Column(
        children: [
          Table(
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            columnWidths: const <int, TableColumnWidth>{
              0: FixedColumnWidth(70),
              1: FlexColumnWidth(),
            },
            children: [
              TableRow(children: [
                Text(
                  "작성자",
                  style: TextStyle(),
                ),
                TextField()
                //      decoration: InputDecoration(border: InputBorder.none)),
              ]),
              TableRow(children: [
                Text("제목"),
                TextField()
                //      decoration: InputDecoration(border: InputBorder.none)),
              ]),
              TableRow(children: [
                Text("내용"),
                Container(
                  height: screenSize.height / 3,
                  child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: "내용을 입력해주세요")),
                ),
              ]),
            ],
          ),
          Container(
            width: screenSize.width / 5,
            alignment: Alignment.center,
            child: OutlinedButton(
                style: OutlinedButton.styleFrom(side: BorderSide(width: 1)),
                onPressed: () {},
                child: Text("작성 완료")),
          )
        ],
      ),
    );
  }
}
