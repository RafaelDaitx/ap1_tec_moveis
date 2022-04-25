import 'package:flutter/material.dart';

class PerfomancePage extends StatelessWidget {
  const PerfomancePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aula'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.25,
                child: Card(
                  elevation: 2,
                  color: Colors.white70,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Column(
                    children: [
                      const ListTile(
                        title: Text('Visualizar desempenho do aluno'),
                        subtitle: Text('Visualização do desempenho do aluno'),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                        child: Row(
                          children: [
                            const Text("Período"),
                            SizedBox(width: MediaQuery.of(context).size.width * 0.2),
                            const Text("Turma"),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.31,
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: DropdownButton(
                                items: <String>['2022/1', '2021/2', '2021/1'].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                onChanged: (String? value) {},
                              ),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.2,
                            child: Align(
                              child: DropdownButton(
                                items: <String>['2022/1', '2021/2', '2021/1'].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                onChanged: (String? value) {},
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    titleNote("AP1"),
                    Column(
                      children: [
                        totalNote(1.54),
                        const Text("NOTA TOTAL"),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            screenNotes(6),
                          ],
                        ),
                        SizedBox(width: MediaQuery.of(context).size.width * 0.2),
                        Column(
                          children: [
                            noteProve(2.98),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    titleNote("AP2"),
                    Column(
                      children: [
                        totalNote(1.24),
                        const Text("NOTA TOTAL"),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 8),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            screenNotes(4),
                          ],
                        ),
                        SizedBox(width: MediaQuery.of(context).size.width * 0.2),
                        Column(
                          children: [
                            noteProve(2.98),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      height: 1,
                      width: MediaQuery.of(context).size.width * 1,
                      color: Colors.grey,
                    ),
                    Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            screenNotes(9),
                          ],
                        ),
                        SizedBox(width: MediaQuery.of(context).size.width * 0.2),
                        Column(
                          children: [
                            noteProve(2.98),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    titleNote("AS"),
                    Column(
                      children: [
                        totalNote(1.24),
                        const Text("NOTA TOTAL"),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 8),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(0),
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              screenNotes(8),
                            ],
                          ),
                          SizedBox(width: MediaQuery.of(context).size.width * 0.2),
                          Column(
                            children: [
                              noteProve(2.98),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 1,
                      width: MediaQuery.of(context).size.width * 1,
                      color: Colors.grey,
                    ),
                    Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            screenNotes(7),
                          ],
                        ),
                        SizedBox(width: MediaQuery.of(context).size.width * 0.2),
                        Column(
                          children: [
                            noteProve(2.98),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget titleNote(String titleNote) {
    return Text(
      "-> ${titleNote} - V",
      style: const TextStyle(fontWeight: FontWeight.bold),
    );
  }

  Widget totalNote(double totalNote) {
    return Text("${totalNote}");
  }

  Widget screenNotes(double valueNote) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Text("Nota"),
        Stack(
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(image: AssetImage("assets/img.png"), fit: BoxFit.fill),
              ),
            ),
            Positioned(
              bottom: 50,
              left: 40,
              child: Container(
                width: 90,
                height: 15,
                child: Container(child: Text("${valueNote}")),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget noteProve(double nota) {
    return Column(
      children: [
        const Text(
          "Questões - Objetiva 1",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Row(
          children: [
            const Text(
              "Vale: ",
            ),
            Text(
              "${nota}",
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ],
    );
  }
}
