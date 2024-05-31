import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CounterFunctionScreen extends StatefulWidget {
  const CounterFunctionScreen({super.key});

  @override
  State<CounterFunctionScreen> createState() => _CounterFunctionScreenState();
}

class _CounterFunctionScreenState extends State<CounterFunctionScreen> {
  int clickCounter = 0;
  
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Counter Functions"),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {}),
          backgroundColor: Colors.tealAccent,
          actions: [
            IconButton(icon: const Icon(Icons.person_2_rounded), onPressed: () {}),
            IconButton(icon: const Icon(Icons.menu_open), onPressed: () {})
          ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$clickCounter', style: TextStyle(
              fontSize: 160, 
              fontWeight: FontWeight.w100)),
            Text(clickCounter > 1 ? 'Clicks' : 'Click', style: TextStyle(
              fontSize: 25))
          ]
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
            // Resta
            CustomButton(
              icon: Icons.exposure_minus_1_rounded,
              onPressed: () {
                setState(() {
                  clickCounter--;
                  HapticFeedback.vibrate();
              });}),
            SizedBox(height: 10),

            // Suma
            CustomButton(icon: Icons.plus_one,
            onPressed: () {
                setState(() {
                  clickCounter++;
                  HapticFeedback.vibrate();
              });}),
            SizedBox(height: 10),
            
            // Reinicio
            CustomButton(icon: Icons.refresh,
            onPressed: () {
                setState(() {
                  if(clickCounter <= 0) return;
                  clickCounter = 0;
                  HapticFeedback.vibrate();
              });})
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData icon;
  const CustomButton({super.key, required this.icon, required this.onPressed});
  
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      shape: const StadiumBorder(),
      child: Icon(icon),
      enableFeedback: true,
      elevation: 5
      );
  }

  
}