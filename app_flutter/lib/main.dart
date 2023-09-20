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
          leading: Container(), //cria um espaço a esquerda pode ser utilizado pra espaço ou pra colocar um icone e etc
          title: const Text(
            'Tarefas',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blueAccent,
        ),
        body: ListView(
          children: [
            Task('Aprender Flutter', 'https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large', 0),
            Task('Tocar guitarra', 'https://akamai.sscdn.co/gcs/cifra-blog/pt/wp-content/uploads/2022/03/5730533-tocando-guitarra-rapido.jpg', 3),
            Task('Meditar', 'https://manhattanmentalhealthcounseling.com/wp-content/uploads/2019/06/Top-5-Scientific-Findings-on-MeditationMindfulness-881x710.jpeg', 5),
            Task('Aprender teste', 'https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large', 2),
            Task('Aprender Aprender', 'https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large', 4),
          ],
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {}, backgroundColor: Colors.blueAccent),
      ),
    );
  }
}

class Task extends StatefulWidget {
  final String nome;
  final String foto;
  final int dificuldade;

  const Task(this.nome, this.foto, this.dificuldade, {Key? key}) : super(key: key);

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  int nivel = 0;
  
  @override
  Widget build(BuildContext context) {
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
                        child: Image.network(
                        widget.foto,
                        fit: BoxFit.cover,
                      ),

                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 200,
                            child: Text(
                              widget.nome,
                              style: const TextStyle(
                                fontSize: 24,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                          Row(children: [
                            Icon(
                              Icons.star, 
                              size: 15, 
                              color: (widget.dificuldade >= 1) ? Colors.blue : Colors.blue[100]
                            ),
                            Icon(
                              Icons.star, 
                              size: 15, 
                              color: (widget.dificuldade >= 2) ? Colors.blue : Colors.blue[100]
                            ),
                            Icon(
                              Icons.star, 
                              size: 15, 
                              color: (widget.dificuldade >= 3) ? Colors.blue : Colors.blue[100]
                            ),
                            Icon(
                              Icons.star, 
                              size: 15, 
                              color: (widget.dificuldade >= 4) ? Colors.blue : Colors.blue[100]
                            ),
                            Icon(
                              Icons.star, 
                              size: 15, 
                              color: (widget.dificuldade >= 5) ? Colors.blue : Colors.blue[100]
                            ),
                          ],),
                        ],
                      ),
                      Container(
                        width: 68,
                        height: 90,
                        child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                nivel++;
                              });
                            },
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Icon(Icons.arrow_drop_up),
                                Text("UP", style: TextStyle(fontSize: 10),),
                              ],
                            ),
                            ),
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: LinearProgressIndicator(
                          color: Colors.white,
                          value: (widget.dificuldade > 0) ? (nivel/widget.dificuldade)/10 : 1,
                        ),
                        width: 200,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Text(
                        'Nivel $nivel',
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
