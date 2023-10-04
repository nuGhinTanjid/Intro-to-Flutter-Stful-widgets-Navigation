import 'package:flutter/material.dart';
import 'package:flutter_statefulwidget_ounterappproject_7/product_details.dart';
import 'package:flutter_statefulwidget_ounterappproject_7/userlist.dart';


///Class 2


class ProductList extends StatefulWidget {

  const ProductList({super.key});

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  String message ='' ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PRODUCTS PAGE '),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(message),

            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text('Back to Home')),

           /* ElevatedButton(onPressed: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) => UserList(),
                  ),
              );
            }, child: Text('user page')),*/

            ElevatedButton(onPressed: (){
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (_) => UserList()),
                      (route) => false
              );
            },
                child: Text('user page')),

            ElevatedButton(onPressed: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => ProductDetails('tonmoy')
                  ),
              ).then((value){
               message=value.toString() ;
               setState(() {});
              } );
            },
                child: Text('product details'))
          ],
        ),
      ),
    );
  }
}