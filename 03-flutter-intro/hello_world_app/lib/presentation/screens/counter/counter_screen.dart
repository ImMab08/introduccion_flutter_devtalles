import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {

  const CounterScreen({
    super.key
  });

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  int clickCounter = 0;

  @override
  Widget build(BuildContext context){
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.green
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Counter Screen', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('$clickCounter', style: const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),),
              Text(clickCounter == 1 ? 'Click' : 'Clicks')
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              clickCounter ++;
            });
          },
          child: Icon(
            Icons.plus_one_rounded
          ),
        ),
      )
    );
  }
}