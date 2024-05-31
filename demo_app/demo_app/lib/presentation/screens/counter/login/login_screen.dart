import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {


  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  
  @override
  Widget build(Object context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Login", style: TextStyle(fontSize: 30))
          ),
          backgroundColor: Colors.tealAccent,
      ),
      body: Form(
        key: _formKey,
        child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 100),
            Text("Username", style: TextStyle(fontSize: 20),),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Enter your username',
              ),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              }
            ),
            Text("Email", style: TextStyle(fontSize: 20),),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Enter your email',
              ),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';

                }
                return null;
              }
            ),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                }
              },
              child: const Text('Submit'),
            ),
        ],),
      )
      )
      );
  }
}