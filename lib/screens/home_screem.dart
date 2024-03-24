import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomeView extends StatefulWidget {
  HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int count = 0;

  void increment() {
    if (count < 10){
      count++;
    }
      
  }  

  void decrement() {
    if (count > 0){
      count--;
    }    
  }

  Color cambiarColor() {
    Color color = Colors.green;
    if (count >= 5) {
      color = Colors.red;
    }
    return color;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
       child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Bienvenidos"), 
          const SizedBox(height: 20),
          Text('Contador: $count', style: TextStyle(color: cambiarColor()),),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: ElevatedButton(
              onPressed: () {
                increment();
                setState(() {});
              },
              
              child: const Text("Incrementar"),
              )
            ),
            Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: ElevatedButton(
              onPressed: () {
                decrement();
                setState(() {});
              },              
              child: const Text("Decrementar"),
              )
            ),
          ],),
      ),
    );
  }
}