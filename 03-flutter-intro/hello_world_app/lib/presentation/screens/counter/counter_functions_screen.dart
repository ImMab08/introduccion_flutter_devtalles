import 'package:flutter/material.dart';

class CounterFunctionScreen extends StatefulWidget {

  const CounterFunctionScreen({
    super.key
  });

  @override
  State<CounterFunctionScreen> createState() => _CounterFunctionScreenState();
}

class _CounterFunctionScreenState extends State<CounterFunctionScreen> {

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
          title: Text('Counter functions', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
          actions: [
            IconButton(
              onPressed: () {
                setState(() {
                  clickCounter = 0;
                });
              }, 
              icon: Icon(
                Icons.refresh_rounded
              )
            )
          ],
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
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomFloatingActionButton(
              icon: Icons.refresh_rounded,
              onPressed: () {
                setState(() {
                  clickCounter = 0;
                });
              },
            ),
            
            const SizedBox( height: 10, ),
            
            CustomFloatingActionButton(
              icon: Icons.plus_one_rounded,
              onPressed: () {
                setState(() {
                  clickCounter ++;
                });
              },
            ),
            
            const SizedBox( height: 10, ),
            
            CustomFloatingActionButton(
              icon: Icons.exposure_minus_1_rounded,
              onPressed: () {
                setState(() {
                  if(clickCounter == 0) return;
                  clickCounter --;
                });
              },
            ),
          ],
        )
      )
    );
  }
}

class CustomFloatingActionButton extends StatelessWidget {

  final IconData icon;
  final VoidCallback? onPressed;

  const CustomFloatingActionButton({
    super.key,
    required this.icon,
    required this.onPressed
  });
  
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: StadiumBorder(),
      onPressed: onPressed,
      child: Icon(
        icon
      ),
    );
  }

}