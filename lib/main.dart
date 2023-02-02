import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Navigation Screen Demo using named routes',
    initialRoute: '/first',
    routes: {
      '/': (context) => FirstScreen(),
      '/second': (context) => SecondScreen(),
    },
  ));
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('First Screen')),
      body: Center(
          child: ElevatedButton(
        child: Text('Launch 2nd Screen!'),
        onPressed: () {
          Navigator.pushNamed(context, '/second');
        },
      )),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: Center(
          child: ElevatedButton(
        child: Text('Go BAck !'),
        onPressed: () {
          Navigator.pop(context);
        },
      )),
    );
  }
}
