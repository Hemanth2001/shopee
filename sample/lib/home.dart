import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("API call"),
      ),
      floatingActionButton: FloatingActionButton(onPressed: fetchUsers),
    );
  }
}

Future<void> fetchUsers() async {
  print("data fetch");
  const url = 'https://jsonplaceholder.typicode.com/users';
  final uri = Uri.parse(url);
  final response = await http.get(uri);
  final body = response.body;
  final json = jsonDecode(body);
  setState(() {
    users = json;
  });
}
