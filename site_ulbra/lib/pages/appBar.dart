import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title: Image.asset('assets/imagens/aula.png', height: 60),
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        drawer: Drawer(
          child: Container(
            color: Colors.black87,
            child: ListView(
              children: [
                DrawerHeader(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/imagens/avatar_m.png'),
                        radius: 30,
                      ),
                      Padding(padding: EdgeInsets.only(top: 2)),
                      Text('Pessoa', 
                        style: TextStyle(color: Colors.white),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('ALUNO ',
                            style: TextStyle(color: Colors.grey, fontSize: 12)
                          ),
                          Icon(Icons.check_circle_rounded, color: Colors.grey, size: 15)
                        ],
                      )
                    ],
                  )
                ),
                ListTile(
                  title: const Text('Salas Virtuais',
                    style: TextStyle(color: Colors.white, fontSize: 14)), 
                  leading: Icon(
                    Icons.desktop_windows_sharp,
                    color: Colors.grey,
                  ),
                  onTap: () {
                  },
                ),
                ListTile(
                  title: Text('Anotações de aula',
                    style: TextStyle(color: Colors.white, fontSize: 16)
                  ),
                  leading: Icon(
                    Icons.assignment,
                    color: Colors.grey,
                  ),
                  onTap: () {
                  },
                ),
                ListTile(
                  title: const Text('Avaliação institucional',
                    style: TextStyle(color: Colors.white, fontSize: 16)),
                  leading: Icon(
                    Icons.library_books,
                    color: Colors.grey,
                  ),
                  onTap: () {
                  },
                ),
                ListTile(
                  title: const Text('Avisos',
                    style: TextStyle(color: Colors.white, fontSize: 16)),
                  leading: Icon(
                    Icons.mail_outline,
                    color: Colors.grey,
                  ),
                  onTap: () {
                  },
                ),
                ListTile(
                  title: const Text('Desempenho',
                    style: TextStyle(color: Colors.white, fontSize: 16)),
                  leading: Icon(
                    Icons.military_tech,
                    color: Colors.grey,
                  ),
                  onTap: () {
                  },
                ),
                ListTile(
                  title: const Text('Frequência',
                    style: TextStyle(color: Colors.white, fontSize: 16)),
                  leading: Icon(
                    Icons.leaderboard_rounded,
                    color: Colors.grey,
                  ),
                  onTap: () {
                  },
                ),
                ListTile(
                  title: const Text('Materiais de apoio',
                    style: TextStyle(color: Colors.white, fontSize: 16)),
                  leading: Icon(
                    Icons.upload_file,
                    color: Colors.grey,
                  ),
                  onTap: () {
                  },
                ),
                ListTile(
                  title: const Text('Mensagens',
                    style: TextStyle(color: Colors.white, fontSize: 16)),
                  leading: Icon(
                    Icons.chat_bubble_outline,
                    color: Colors.grey,
                  ),
                  onTap: () {
                  },
                ),
                ListTile(
                  title: const Text('Minha biblioteca',
                    style: TextStyle(color: Colors.white, fontSize: 16)),
                  leading: Icon(
                    Icons.library_books,
                    color: Colors.grey,
                  ),
                  onTap: () {
                  },
                ),
                ListTile(
                  title: const Text('Minhas turmas',
                    style: TextStyle(color: Colors.white, fontSize: 16)),
                  leading: Icon(
                    Icons.school,
                    color: Colors.grey,
                  ),
                  onTap: () {
                  },
                ),
                ListTile(
                  title: const Text('Pearson',
                    style: TextStyle(color: Colors.white, fontSize: 16)),
                  leading: Icon(
                    Icons.library_books,
                    color: Colors.grey,
                  ),
                  onTap: () {
                  },
                ),
                ListTile(
                  title: const Text('Sair',
                    style: TextStyle(color: Colors.white, fontSize: 16)),
                  leading: Icon(
                    Icons.logout,
                    color: Colors.grey,
                  ),
                  onTap: () {
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}