import 'package:flutter/material.dart';

import 'models/data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Travel App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.shade900,
        title: const Text("Travel App"),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Image.network(
          "https://images.unsplash.com/photo-1452421822248-d4c2b47f0c81?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzJ8fHRyYXZlbHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
        ),
        const SizedBox(
          height: 50,
        ),
        SizedBox(
          height: 100,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
              itemCount: dataList.length,
              itemBuilder: (BuildContext context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 50.0,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.red.shade900,
                    ),
                    child: Center(
                      child: Text(dataList[index].cityName,
                        style: const TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                );
              }),


          //     child: ListView.(
          //       scrollDirection: Axis.horizontal,
          //       //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //       children: [
          //         Padding(
          //           padding: const EdgeInsets.all(8.0),
          //           child: Container(
          //             height: 50.0,
          //             width: 100,
          //             //color: Colors.red.shade900,
          //             decoration: BoxDecoration(
          //               borderRadius: BorderRadius.circular(10),
          //               color: Colors.red.shade900,
          //             ),
          //             child: const Center(
          //               child: Text(
          //                 "Places",
          //                 style: TextStyle(
          //                   fontSize: 18,
          //                   color: Colors.white,
          //                 ),
          //               ),
          //             ),
          //           ),
          //         ),
          //         Padding(
          //           padding: const EdgeInsets.all(8.0),
          //           child: Container(
          //             height: 50.0,
          //             width: 100,
          //             decoration: BoxDecoration(
          //               borderRadius: BorderRadius.circular(10),
          //               color: Colors.red.shade900,
          //             ),
          //             child: const Center(
          //               child: Text(
          //                 "Hotels",
          //                 style: TextStyle(
          //                   fontSize: 18,
          //                   color: Colors.white,
          //                 ),
          //               ),
          //             ),
          //           ),
          //         ),
          //         Padding(
          //           padding: const EdgeInsets.all(8.0),
          //           child: Container(
          //             height: 50.0,
          //             width: 100,
          //             //color: Colors.red.shade900,
          //             decoration: BoxDecoration(
          //               borderRadius: BorderRadius.circular(10),
          //               color: Colors.red.shade900,
          //             ),
          //             child: const Center(
          //               child: Text(
          //                 "Attractions",
          //                 style: TextStyle(
          //                   fontSize: 18,
          //                   color: Colors.white,
          //                 ),
          //               ),
          //             ),
          //           ),
          //         )
          //       ],
          //     ),
          //   ),
          //
          //
          // const Padding(
          //   padding:  EdgeInsets.all(10.0),
          //   child: Text("Popular Destinations",
          //     style: TextStyle(
          //       fontSize: 20,
          //       fontWeight: FontWeight.bold,
          //     ) ,),
          // ),
        )
      ]),
    );
  }
}
