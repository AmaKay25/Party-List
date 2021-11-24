import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //List of names

  MyApp({Key? key}) : super(key: key);
  final List<String> names = ["Kwame", "Ama", "Akosua"];

final List<String> images = [
  "https://images.unsplash.com/photo-1637580981009-c13f27517703?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
  "https://images.unsplash.com/photo-1633114128729-0a8dc13406b9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
  "https://images.unsplash.com/photo-1637627491985-6575913043d8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=394&q=80"
];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: const Drawer(),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.purpleAccent,
          title: const Text ("Party List"),
        ),
        body: ListView.builder(
           scrollDirection: Axis.vertical,
           itemBuilder: (BuildContext context, int index) => ListTile(
             leading:  CircleAvatar (
               backgroundImage: NetworkImage(
                 images[index]),
             ),
             title: const Text("What is your name?"),
             subtitle: Text(names[index]),
             trailing: const Icon(
               Icons.check_box_rounded,
               color: Colors.blue,
               ),
             
          ),
          itemCount: names.length,
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.lightBlueAccent,
          onPressed: () {},
          child: const Icon(Icons.add),
          ),
      ),
    ); 
  }
}
