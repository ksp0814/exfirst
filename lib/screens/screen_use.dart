import 'package:flutter/material.dart';

class test5 extends StatefulWidget {
  @override
  PageView5 createState() => PageView5();
}

class PageView5 extends State<test5>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 243, 243, 1),
      appBar: AppBar(
        title: Text('중고 장터',style: TextStyle(color: Colors.black87),),
        iconTheme: IconThemeData(color: Colors.black87),
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        elevation: 0,
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){
          print('중고 장터 추가');},
        tooltip: 'Increment',
        child: Icon(Icons.add),


      ),
    );
  }
}
