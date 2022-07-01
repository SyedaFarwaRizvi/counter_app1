import 'package:flutter/material.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({Key? key}) : super(key: key);
  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int counter = 0;
  // ignore: unused_local_variable
  String counterText() {
    String stringValue = counter.toString();
    return counterText();
  }

  void increaseCount() {
    setState(() {
      counter += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.deepPurple[100],
          appBar: AppBar(
            title: const Text("Counter App"),
            centerTitle: true,
            elevation: 0,
            backgroundColor: Colors.pinkAccent,
          ),
          body: Center(
            child: Card(
              color: Colors.lightBlue,
              elevation: 20.0,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  counter.toString(),
                  style: const TextStyle(fontSize: 20.0, color: Colors.white),
                ),
              ),
            ),
          ),
          floatingActionButton: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                onPressed: () {
                  increaseCount();
                  if (counter == 100) {
                    print('Round 1 is completed');
                  }
                },
                backgroundColor: Colors.deepPurpleAccent,
                child: const Icon(Icons.arrow_circle_up_outlined),
              ),
            ],
          )),
    );
  }
}
