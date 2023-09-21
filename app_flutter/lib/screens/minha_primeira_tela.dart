import 'package:flutter/material.dart';

class MyFirstWidget extends StatelessWidget {
  const MyFirstWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    // Stack(
      //   alignment: AlignmentDirectional.center,
      //   children: [
      //     Container(height: 300, width: 300, color: Colors.black),
      //     Container(height: 150, width: 150, color: Colors.red),
      //     Container(height: 75, width: 75, color: Colors.blue),
      //     Container(height: 37, width: 37, color: Colors.yellow),
      //   ],
      // ),
      // Column
      // (
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   crossAxisAlignment: CrossAxisAlignment.end,
      //   children: [
      //     Container(height: 300, width: 300, color: Colors.black),
      //     Container(height: 150, width: 150, color: Colors.red),
      //     Container(height: 75, width: 75, color: Colors.blue),
      //     Container(height: 37, width: 37, color: Colors.yellow),
      //   ],
      // ),
      // Row
      // (
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   crossAxisAlignment: CrossAxisAlignment.end,
      //   children: [
      //     Container(height: 100, width: 100, color: Colors.red),
      //     Container(height: 50, width: 50, color: Colors.blue),
      //   ],
      // ),
      Container(
        color: Colors.white,
        child: Column
          (
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  Container(color: Colors.red, width: 100, height: 100),
                  Container(color: Colors.blue, width: 50, height: 50,),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(color: Colors.cyan, height: 50, width: 50,),
                  Container(color: Colors.pink, height: 50, width: 50,),
                  Container(color: Colors.purple, height: 50, width: 50,),
                ],
              ),
              Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  Container(color:Colors.yellow, width: 100, height: 100),
                  Container(color: Colors.white, width: 50, height: 50),
                ],
              ),
              Container(
                color: Colors.amber,
                width: 300,
                height: 30,
                child: 
                  const Text(
                    "Diamante Amarelo",
                    style: 
                      TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                      ),
                    textAlign: TextAlign.center,
                  ),
              ),
              ElevatedButton(
                onPressed: () {
                  print("Botão precionado");
                }, 
                child: const Text("Precione o botão!")),
            ],
          ),
      );
  }
}