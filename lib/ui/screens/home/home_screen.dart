import 'package:flutter/material.dart';
import 'package:todoapp/ui/screens/bottom_sheets/add_bottom_sheet.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = "home";

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      bottomNavigationBar: bottomNavigationBar(),
      floatingActionButton: buildFab(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget buildFab() => FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (_) => Padding(
                    padding: MediaQuery.of(context).viewInsets,
                    child: AddBottomSheet(),
                  ));
        },
        child: Icon(Icons.add),
      );

  Widget bottomNavigationBar() => BottomAppBar(
        notchMargin: 8,
        shape: CircularNotchedRectangle(),
        clipBehavior: Clip.hardEdge,
        child: BottomNavigationBar(items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined),
            label: "",
          ),
        ]),
      );

  PreferredSizeWidget buildAppBar() => AppBar(
        title: Text("To Do List"),
        toolbarHeight: 200,
      );
}
