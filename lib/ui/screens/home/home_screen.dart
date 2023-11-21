import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = "home";
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: buildAppBar(),
      bottomNavigationBar: bottomNavigationBar(),
    );
  }

  Widget bottomNavigationBar() =>  BottomNavigationBar(items: items)

  PreferredSizeWidget buildAppBar() => AppBar(
    title: Text("To Do List"),
    toolbarHeight: 200,
  );
}
