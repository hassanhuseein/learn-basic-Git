import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Examples.dart';
import 'HomePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        elevation: 5,
        title: Text("Learn Basic Git"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(
          color: Colors.blueGrey,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => MyHomePage()));
                  },
                  child: Text("Sqflite")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => Example()));
                  },
                  child: Text("Web")),
            ],
          ),
        ),
      ),

      // body: SafeArea(
      //   child: Container(
      //     color: Colors.blueGrey,
      //     padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      //     child: Column(
      //       crossAxisAlignment: CrossAxisAlignment.stretch,
      //       children: [
      //         Material(
      //           elevation: 10,
      //           //color: Colors.transparent,
      //           borderRadius: BorderRadius.circular(16),
      //           child: Container(
      //             height: 300,
      //             decoration: BoxDecoration(
      //                 //color: Colors.orange,
      //                 borderRadius: BorderRadius.circular(16)),
      //             padding: EdgeInsets.symmetric(vertical: 5, horizontal: 7),
      //             child: Column(
      //               crossAxisAlignment: CrossAxisAlignment.start,
      //               children: [
      //                 Text(
      //                   "Pakages",
      //                   style: TextStyle(color: Colors.black, fontSize: 22),
      //                 ),
      //                 Divider(),
      //                 Scrollbar(
      //                   radius: Radius.circular(15),
      //                   child: Container(
      //                     height: 150,
      //                     decoration: BoxDecoration(
      //                         color: Color.fromRGBO(230, 230, 230, 1),
      //                         borderRadius: BorderRadius.circular(16)),
      //                     padding: EdgeInsets.all(10),
      //                     child: SingleChildScrollView(
      //                       scrollDirection: Axis.horizontal,
      //                       child: Row(
      //                         //  mainAxisAlignment: MainAxisAlignment.center,
      //                         children: [
      //                           _buildCard(Colors.white,
      //                               "https://www.mysql.com/common/logos/logo-mysql-170x115.png"),
      //                           _buildCard(Colors.white,
      //                               "https://www.php.net/images/logos/new-php-logo.png"),
      //                           // _buildCard(Colors.redAccent),
      //                           // _buildCard(Colors.deepPurpleAccent),
      //                         ],
      //                       ),
      //                     ),
      //                   ),
      //                 )
      //               ],
      //             ),
      //           ),
      //         )
      //       ],
      //     ),
      //   ),
      // ),
    );
  }

  Widget _buildCard(Color color, String urlImage) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100,
          margin: EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(5)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 5,
              ),
              Material(
                elevation: 5,
                borderRadius: BorderRadius.circular(100),
                child: CircleAvatar(
                  radius: 31,
                  backgroundColor: Colors.grey,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 30,
                    child: Image.network("$urlImage"),
                  ),
                ),
              ),
              Text(
                "SQL",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
