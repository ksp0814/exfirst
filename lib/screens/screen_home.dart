import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'screen_community.dart';
import 'screen_use.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 243, 243, 1),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black87),
        backgroundColor: Colors.white,
        elevation: 0, systemOverlayStyle: SystemUiOverlayStyle.dark,

        // leading:
        //   IconButton(
        //     icon: Icon(
        //       Icons.menu,
        //       color: Colors.black87,
        //     ),
        //     onPressed: () {
        //       Scaffold.of(context).openDrawer();
        //     },
        //     tooltip:
        //     MaterialLocalizations.of(context).openAppDrawerTooltip,
        //   ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 0),
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/images/IMG_0697.jpg'),
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/profile.png'),
                )
              ],
              accountEmail: Text('rkdtpvlf456@naver.com'),
              accountName: Text('Se Pil'),
              onDetailsPressed: () {
                print('press details');
              },
              decoration: BoxDecoration(
                  color: Colors.blue[300],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  )),
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.grey[850],
              ),
              title: Text('분실물 센터'),
              onTap: () {
                print('분실물 센터 클릭');
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => test())
                );
              },
              // trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(
                Icons.question_answer,
                color: Colors.grey[850],
              ),
              title: Text('공지사항'),
              onTap: () {
                print('공지사항 클릭');
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => test2())
                );
              },
              // trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(
                Icons.groups,
                color: Colors.grey[850],
              ),
              title: Text('커뮤니티'),
              onTap: () {
                print('커뮤니티 클릭');
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => test3())
                );
              },
              // trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(
                Icons.directions_bus,
                color: Colors.grey[850],
              ),
              title: Text('셔틀버스 좌석 예약'),
              onTap: () {
                print('셔틀버스 좌석 예약 클릭');
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => test4())
                );
              },
              // trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(
                Icons.shopping_cart,
                color: Colors.grey[850],
              ),
              title: Text('중고장터'),
              onTap: () {
                print('중고장터 클릭');
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => test5())
                  );

              },
            )
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(30))),
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '슬기로운 협성톡',
                      style: TextStyle(color: Colors.black87, fontSize: 40),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      '소트프웨어공학과 2조 졸작',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize:15,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(244, 243, 243, 1),
                          borderRadius: BorderRadius.circular(15)),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.black87,
                            ),
                            hintText: "검색",
                            hintStyle:
                            TextStyle(color: Colors.grey, fontSize: 15)),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '오늘의 분실물',
                      style:
                      TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 200,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          promoCard('assets/images/IMG_0694.jpeg'),
                          promoCard('assets/images/two.jpg'),
                          promoCard('assets/images/three.jpg'),
                          promoCard('assets/images/four.jpg'),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/three.jpg')),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                              begin: Alignment.bottomRight,
                              stops: [
                                0.3,
                                0.9
                              ],
                              colors: [
                                Colors.black.withOpacity(.8),
                                Colors.black.withOpacity(.2)
                              ]),
                        ),
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text(
                              '공지사항',
                              style:
                              TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget promoCard(image) {
    return AspectRatio(
      aspectRatio: 2.62 / 3,
      child: Container(
        margin: EdgeInsets.only(right: 15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(fit: BoxFit.cover, image: AssetImage(image)),
        ),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(begin: Alignment.bottomRight, stops: [
                0.1,
                0.9
              ], colors: [
                Colors.black.withOpacity(.8),
                Colors.black.withOpacity(.1)
              ])),
        ),
      ),
    );
  }
}

class test extends StatefulWidget {
  @override
  PageView1 createState() => PageView1();
}

class PageView1 extends State<test>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 243, 243, 1),
      appBar: AppBar(
        title: Text('분실물 센터',style: TextStyle(color: Colors.black87),),
        iconTheme: IconThemeData(color: Colors.black87),
        backgroundColor: Colors.white,
        elevation: 0, systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){
          print('분실물 추가');},
        tooltip: 'Increment',
        child: Icon(Icons.add),


      ),
    );
  }
}

// class test2 extends StatefulWidget {
//   @override
//   PageView2 createState() => PageView2();
// }
//
// class PageView2 extends State<test2>{
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color.fromRGBO(244, 243, 243, 1),
//       appBar: AppBar(
//         title: Text('공지사항',style: TextStyle(color: Colors.black87),),
//         iconTheme: IconThemeData(color: Colors.black87),
//         backgroundColor: Colors.white,
//         brightness: Brightness.light,
//         elevation: 0,
//       ),
//
//       floatingActionButton: FloatingActionButton(
//         onPressed: (){
//           print('공지사항 추가');},
//         tooltip: 'Increment',
//         child: Icon(Icons.add),
//
//
//       ),
//     );
//   }
// }

class test3 extends StatefulWidget {
  @override
  PageView3 createState() => PageView3();
}

class PageView3 extends State<test3>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(244, 243, 243, 1),
        appBar: AppBar(
          title: Text('커뮤니티',style: TextStyle(color: Colors.black87),),
          iconTheme: IconThemeData(color: Colors.black87),
          backgroundColor: Colors.white,
          elevation: 0, systemOverlayStyle: SystemUiOverlayStyle.dark,
        )


    );
  }
}

class test4 extends StatefulWidget {
  @override
  PageView4 createState() => PageView4();
}

class PageView4 extends State<test4>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(244, 243, 243, 1),
        appBar: AppBar(
          title: Text('셔틀버스 좌석 예약',style: TextStyle(color: Colors.black87),),
          iconTheme: IconThemeData(color: Colors.black87),
          backgroundColor: Colors.white,
          elevation: 0, systemOverlayStyle: SystemUiOverlayStyle.dark,
        )


    );
  }
}