import 'package:filedemo/docs.dart';
import 'package:filedemo/file_loader.dart';
import 'package:flutter/material.dart';
//import 'package:file_picker/file_picker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    TextLoader loader = TextLoader(filePath: 'assetss/lang.txt');
    return Scaffold(
      body: Center(
        child: FutureBuilder<List<Document>>(
            future: loader.load(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                List<Document>? docs = snapshot.data;
                print(docs);
                return const Text("has data");
              } else {
                return const Text("no data");
              }
            }),
      ),
    );
  }
}
