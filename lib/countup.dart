import 'package:flutter/material.dart';

class CountUpScaffolding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CountUP',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Count Up'),
        ),
        body: CountUp(),
      ),
    );
  }
}

class CountUp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CountUpState();
  }
}

class _CountUpState extends State<CountUp> {
  int _counter = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello Katja and Eva and Annika"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
              margin: EdgeInsets.all(20.0),
              child: Text(
                  "KATJA is Eva's aweseom sister. They are so delightful",
                  style: Theme.of(context).textTheme.display1)),
          Container(
              margin: EdgeInsets.all(10.0),
              child: Text('$_counter',
                  style: Theme.of(context).textTheme.display1)),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        child: Icon(Icons.add),
        tooltip: 'Increase counter',
        onPressed: _incrementCounter,
      ),
    );
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
}
