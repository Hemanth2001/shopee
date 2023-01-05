// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// import 'model.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   Future<Exercise>? post;
//   @override
//   void initState() {
//     super.initState();

//    //post = fetch();
//   }

//   Future<Exercise> fetch() async {
//     final request =
//         await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));

//     if (request.statusCode == 200) {
//       var jsonData = jsonDecode(request.body);
//       List<User> body = [];
//       for(var u in jsonData ){
//         User exercise = User(u['name'],u['email'], u['username']);
//       }
//     //  List<Exercise> posts = body.map((dynamic e) => Exercise.fromJson(e)).toList();
//      // print(Exercise.fromJson(jsonDecode(request.body)));
//      //print(posts);
//       return posts;
//       //return (await response.stream.bytesToString());
//     } else {
//       // print(response.reasonPhrase);
//       throw Exception('Fail');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         home: Scaffold(
//             body: FutureBuilder<Exercise>(
//       future: fetch,
//       builder: (context, snapshot) {
//         print(snapshot.data?.name);
//         return ListView.builder(
//           itemBuilder: ( context,  index) {
//            // print(snapshot.data![index]);
//             return Text(snapshot.data!.name![index]);
//           },
//           //itemCount:,
//         );
//         //return Text(snapshot.data!.id.toString());
//       },
//     )

//             ));
//   }
// }
// class User {
//   final String? name;
//   final String? email;
//   final String? username;
//   User(u, {
//      this.name,
//      this.email,
//      this.username,
//   });
// }

import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
