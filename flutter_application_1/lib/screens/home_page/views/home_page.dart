import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/provider/home_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

TextEditingController textEditingController = TextEditingController();

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var pw = context.watch<HomeProvider>();
    var pr = context.read<HomeProvider>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: Column(
        children: [
          TextField(
            maxLines: 5,
            controller: textEditingController,
            decoration: const InputDecoration(
                border: OutlineInputBorder(), hintText: "enter text"),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.amber),
                ),
                onPressed: () {
                  pr.getTranslatedWord(textEditingController.text);
                },
                child: const Text("Translate text")),
          ),
          Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(border: Border.all()),
              child: Text(
                "${pr.modal?.response}",
                style: TextStyle(fontSize: 20),
              ))
        ],
      ),
    );
  }
}
