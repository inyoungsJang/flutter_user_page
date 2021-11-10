import 'package:flutter/material.dart';
import 'package:flutter_user_page/screen/gaesipanWrite.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      getPages: [
        GetPage(name: '/home', page: () => MyHomePage()),
        GetPage(name: '/gaesipanWrite', page: () => GaesipanWrite())
      ],
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void initState() {
    super.initState();
  }

  Future<void> _downloadCsv() async {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("게시판"),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 10, right: 10),
        margin: EdgeInsets.only(top: 15),
        child: ListView(children: [
          Container(
            //글 작성
            child: GaesipanWrite(),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.end, children: []),
          Container(
            width: MediaQuery.of(context).size.width,
            //게시글 목록
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: DataTable(
                columns: [
                  DataColumn(label: Text("글번호")),
                  DataColumn(label: Text("작성자")),
                  DataColumn(label: Text("제목"))
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text("1")),
                    DataCell(Text("1")),
                    DataCell(Text("1")),
                  ]),
                  DataRow(cells: [
                    DataCell(Text("1")),
                    DataCell(Text("1")),
                    DataCell(Text("1")),
                  ]),
                  DataRow(cells: [
                    DataCell(Text("1")),
                    DataCell(Text("1")),
                    DataCell(Text("1")),
                  ]),
                ],
              ),
            ),
          ),
          Placeholder(
            fallbackHeight: 1000,
          )
        ]),
      ),
    );
  }
}
