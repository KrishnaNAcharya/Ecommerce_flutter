import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  late int counter; // Initialize counter
  @override
  void initState() {
    counter=0;
    print("Inistate ran");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    print("Build Method ran $counter");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        elevation: 10,
        leading: const Icon(Icons.timer),
        actions: [
          IconButton(
            onPressed: () {
              onExit("Printing ... ");
            },
            icon: const Icon(Icons.exit_to_app),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(
              CupertinoIcons.timer,
              size: 30,
              color: Colors.blueGrey,
            ),
            const SizedBox(height: 15),
            Text(
              "The Button is pressed $counter TIMES!",
              style: const TextStyle(fontSize: 20, color: Colors.blueGrey),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 25,
        children: [
          FloatingActionButton.extended(
            onPressed: _decrease,
            label: const Text("Decrease"),
            icon: const Icon(Icons.remove), // Fixed icon
          ),
          const SizedBox(width: 20), // Spacing between buttons
          FloatingActionButton.extended(
            onPressed: _increase,
            label: const Text("Increase"),
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
  @override
  void dispose(){
    print("Dispose is called");
    super.dispose();
  }
  void _increase() {
    setState(() {
      counter++;
    });
  }

  void _decrease() {
    setState(() {
      counter--;
    });
  }

  void onExit(String message) {
    print(message);
  }
}
