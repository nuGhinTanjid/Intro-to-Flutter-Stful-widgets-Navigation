/*
import 'package:flutter/material.dart';
import 'package:flutter_statefulwidget_ounterappproject_7/counter_screen.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
     home: CounterScreen(),
   );
  }
}
*/
/*class HomeScreen extends StatelessWidget{
  String msg = "Hi Tonmoy";
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text('stateless'),
     ),
     body:Center(
       child: Text(msg),
     ),
     floatingActionButton: FloatingActionButton.extended(
         onPressed: () {
           msg = 'Hi Tanjid';
           print(msg);
         }, label: Text('Ahaa Ahaaa')),
   );
  }
}*//*
 //Previously used in module 6, not needed in m-7 cls 1


*/
/*
///Intro or Widget part
class MessageScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    print('step-1: inital call- tar kamla ke call dibe');
    return _MessageScreenState();
  }
}
///State part
class _MessageScreenState extends State<MessageScreen>{

  @override
  void initState() {

    super.initState();
    print('step 2, init state,');
  }


  @override
  void didChangeDependencies() {
    print('step 3-');
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant MessageScreen oldWidget) {
  print('build er track rakhar jonyo=update');
    super.didUpdateWidget(oldWidget);
  }

  String msg='ht tonmoy';
  @override
  Widget build(BuildContext context) {
   return Scaffold(
          appBar: AppBar(
            title: Text('Stateful Widget'),
          ),
     body:Center(
       child: Text(msg),
     ),
     floatingActionButton: FloatingActionButton.extended(
         onPressed: () {
           msg = 'Hi Tanji';
           print(msg);
           setState(() {});

         }, label: Text('Ahaa Ahaaa')),
   );
  }
  @override
  void deactivate() {
   print('deactive');
    super.deactivate();
  }
  @override
  void dispose() {
    print('dispose');
    super.dispose();
  }
}*/
///Above =Class=1 Content


import 'package:flutter/material.dart';
import 'package:flutter_statefulwidget_ounterappproject_7/home.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key:key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen() ,
    );
  }

}



