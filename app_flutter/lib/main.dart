import 'package:flutter/material.dart';

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
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Flutter: Meus primeiros passos',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blueAccent,
        ),
        body: ListView(
          children: [
            Task('Aprender Flutter sfsdfsdfsdf dfsdfsdfsdfs fsdfsdfsdf sdf'),
            Task('Tocar guitarra'),
            Task('Meditar'),
            Task('Aprender Flutter'),
            Task('Tocar guitarra'),
            Task('Meditar'),
            Task('Aprender Flutter'),
            Task('Tocar guitarra'),
            Task('Meditar'),
            Task('Aprender Flutter'),
            Task('Tocar guitarra'),
            Task('Meditar'),
          ],
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {}, backgroundColor: Colors.blueAccent),
      ),
    );
  }
}

class Task extends StatelessWidget {
  final String nome;
  const Task(this.nome, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int nivel = 0;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Stack(
          children: [
            Container(
              color: Colors.blue,
              height: 140,
            ),
            Column(
              children: [
                Container(
                  color: Colors.white,
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        color: Colors.black26,
                        width: 72,
                        height: 100,
                      ),
                      Container(
                        width: 200,
                        child: Text(
                          nome,
                          style: const TextStyle(
                            fontSize: 24,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            nivel++;
                          },
                          child: const Icon(Icons.arrow_drop_up))
                    ],
                  ),
                ),
                Text(
                  'Nivel $nivel',
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
