// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: SizedBox(
//           width: double.infinity,
//           height: double.infinity,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [

//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SizedBox(
          height: double.infinity,
          child: Column(
            // 주축 정렬 지정
            mainAxisAlignment: MainAxisAlignment.start,

            // 반대축 정렬 지정
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Container(height: 50.0, width: 50.0, color: Colors.purple),

              const SizedBox(width: 12.0),
              Container(height: 50.0, width: 50.0, color: Colors.pink),

              const SizedBox(width: 12.0),
              Container(height: 50.0, width: 50.0, color: Colors.redAccent),
            ],
          ),
        ),
      ),
    );
  }
}
