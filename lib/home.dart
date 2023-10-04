import 'package:flutter/material.dart';
import 'package:flutter_statefulwidget_ounterappproject_7/product_list.dart';
import 'package:flutter_statefulwidget_ounterappproject_7/userlist.dart';

///Class 2

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
        title: const Text('HOME PAGE'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('HOME PAGE'),
           
           
            ElevatedButton(onPressed: () {
              Navigator.push(
                  context,
                MaterialPageRoute(builder: (_) => ProductList()
                )
              );
            },
                child: const Text('List Page')),

            ElevatedButton(onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => UserList()
                  )
              );
            },
                child: const Text('User Page'))
          ],
        ),
      ),
    );
  }
}
