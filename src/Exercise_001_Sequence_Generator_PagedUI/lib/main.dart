import 'package:flutter/material.dart';
import 'package:singleton_pattern_exercise_001/sequence_generator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Singleton Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(text: "1"), // Changed to use numbers
                Tab(text: "2"), // Changed to use numbers
                Tab(text: "3"),
              ],
            ),
            title: const Text('Singleton Sequence Generator'),
          ),
          body: const TabBarView(
            children: [
              SequencePage(),
              SequencePage(),
              SequencePage(),
            ],
          ),
        ),
      ),
    );
  }
}

class SequencePage extends StatefulWidget {
  const SequencePage({Key? key}) : super(key: key);

  @override
  _SequencePageState createState() => _SequencePageState();
}

class _SequencePageState extends State<SequencePage> {
  void _incrementCounter() {
    setState(() {
      SequenceGenerator().getNextNumber();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Last Sequence Number:',
            ),
            Text(
              '${SequenceGenerator().getCurrentNumber()}',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        icon: const Icon(Icons.add),
        label: const Text('Generate Next Number'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
