import 'package:flutter/material.dart';
import 'package:flutter_statefulwidget_ounterappproject_7/home.dart';
import 'package:flutter_statefulwidget_ounterappproject_7/product_list.dart';

///class2

class UserList extends StatefulWidget {
  const UserList({super.key});

  @override
  State<UserList> createState() => _UserListState();
}

class _UserListState extends State<UserList> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('User Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('User Page'),
            ElevatedButton(onPressed: (){
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (_) => ProductList(),),
              );
            },
                child: Text('Product List & Remove the screen')),

            ElevatedButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => ProductList(),),
              );
            },
                child: Text('Product List'))
          ],
        ),
      ),
    );
  }
}
