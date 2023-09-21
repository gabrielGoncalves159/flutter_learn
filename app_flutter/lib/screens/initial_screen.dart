import 'package:flutter/material.dart';
import 'package:app_flutter/task.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  bool opacidade = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Container(), //cria um espaço a esquerda pode ser utilizado pra espaço ou pra colocar um icone e etc
          title: const Text(
            'Tarefas',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blueAccent,
        ),
        body: AnimatedOpacity(
          opacity: (opacidade) ? 1 : 0,
          duration: Duration(milliseconds: 800),
          child: ListView(
            children: [
              Task('Aprender Flutter', 'https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large', 0),
              Task('Tocar guitarra', 'https://akamai.sscdn.co/gcs/cifra-blog/pt/wp-content/uploads/2022/03/5730533-tocando-guitarra-rapido.jpg', 3),
              Task('Meditar', 'https://manhattanmentalhealthcounseling.com/wp-content/uploads/2019/06/Top-5-Scientific-Findings-on-MeditationMindfulness-881x710.jpeg', 5),
              Task('Aprender teste', 'https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large', 2),
              Task('Aprender Aprender', 'https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large', 4),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              opacidade = !opacidade;
            });
          }, 
          backgroundColor: Colors.blueAccent,
          child: Icon(Icons.remove_red_eye),
        ),
      );
  }
}