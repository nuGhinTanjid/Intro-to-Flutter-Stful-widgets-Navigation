import 'package:flutter/material.dart';


///Class 1


class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});


  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {


  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          counter.toString(),
          style: TextStyle(fontSize: 32),
        ),
      ),



      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,

        children: [
          FloatingActionButton(onPressed: () {
            counter = counter + 1;
            setState(() {});
          }, child: Icon(Icons.add),),
          const SizedBox(width: 8,),
          FloatingActionButton(onPressed: (){
            counter = counter - 1;
            setState(() {});
          }, child: Icon(Icons.remove),),
        ],
      ),
    );
  }
}
