import 'package:flutter/material.dart';

void main() {
  /*------Multiple choices
  1-b
  2-a
  3-b
  4-b
  5-a
  */
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
//--------------------------------------------------------------------- Youtube App bar------------------------------------------------
        appBar: AppBar(
          title: const Text(
            "YouTube",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.black,
          leading: IconButton(
            onPressed: () {},
            icon: const Image(
              image: AssetImage('icons/youtube.png'),
              fit: BoxFit.contain,
              height: 32,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.cast),
              color: Colors.white,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications_outlined),
              color: Colors.white,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
              color: Colors.white,
            ),
          ],
        ),
        body:
//----------------------------------------------------------------------Circler container-----------------------------------------------------------------
            //     Center(
            //   child: Container(
            //     width: 300,
            //     height: 300,
            //     //color: Color.fromARGB(255, 78, 239, 247),
            //     decoration: BoxDecoration(
            //       color: const Color.fromARGB(255, 65, 242, 227),
            //       shape: BoxShape.circle,
            //       border: Border.all(
            //         color: Colors.black,
            //         width: 4,
            //         style: BorderStyle.solid,
            //       ),
            //       boxShadow: const [
            //         BoxShadow(
            //           blurRadius: 10,
            //         )
            //       ],
            //     ),
            //   ),
            // ),
//-------------------------------------------------Name design-------------------------------------------------------------------------
            Center(
          child: Container(
            width: 300,
            height: 300,
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      color: Colors.blue,
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      color: Colors.blue,
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      color: Colors.blue,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      color: Colors.blue,
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      color: Colors.transparent,
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      color: Colors.transparent,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      color: Colors.blue,
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      color: Colors.blue,
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      color: Colors.blue,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      color: Colors.transparent,
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      color: Colors.transparent,
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      color: Colors.blue,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      color: Colors.blue,
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      color: Colors.blue,
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      color: Colors.blue,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
