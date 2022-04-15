import 'package:flutter/material.dart';

class AlphabetPage extends StatefulWidget {
  const AlphabetPage({Key? key}) : super(key: key);

  @override
  State<AlphabetPage> createState() => _AlphabetPageState();
}

class _AlphabetPageState extends State<AlphabetPage> {
  int counter = 65;

  @override
  Widget build(BuildContext context) {
    const fontSize = TextStyle(fontSize: 180);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Alphabet App"),
        centerTitle: true,
      ),
      body: Center(
        child: Text(String.fromCharCode(counter), style: fontSize),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: _createButtons(),
    );
  }

  Widget _createButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const SizedBox(width: 200),
        FloatingActionButton(
            onPressed: _decrement, child: const Icon(Icons.chevron_left)),
        FloatingActionButton(
            onPressed: _increment, child: const Icon(Icons.chevron_right)),
      ],
    );
  }

  void _increment() => setState(
      () => String.fromCharCode((counter != 90) ? counter++ : counter = 65));

  void _decrement() => setState(
      () => String.fromCharCode((counter != 65) ? counter-- : counter = 90));
}
