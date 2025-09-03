import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 93, 183, 58),
        ),
      ),
      home: const MyHomePage(title: 'Pimeiro app flutter'),
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
  String _linha1 = "";
  String _linha2 = "";
  String _linha3 = "";
  String _linha4 = "";
  String _linha5 = "";
  String _linha6 = "";

  void _segundaH() {
    setState(() {
      _linha1 = "Aula História - 13:20h ~ 14:10h - Mauá";
      _linha2 = "Aula História - 14:10h ~ 15:00h - Mauá";
      _linha3 = "Aula CNWII - 15:00h ~ 15:50h - Mauá";
      _linha4 = "Aula CNWII - 16:10h ~ 17:00h - Mauá";
      _linha5 = "Aula TCC - 17:00h ~ 17:50h - Mauá";
      _linha6 = "Aula TCC - 17:50h ~ 18:40h - Mauá";
    });
  }

  void _tercaH() {
    setState(() {
      _linha1 = "Aula Português - 13:20h ~ 14:10h - Mauá";
      _linha2 = "Aula Português - 14:10h ~ 15:00h - Mauá";
      _linha3 = "Aula GCW - 15:00h ~ 15:50h - Mauá";
      _linha4 = "Aula GCW - 16:10h ~ 17:00h - Mauá";
      _linha5 = "Aula Geografia - 17:00h ~ 17:50h - Mauá";
      _linha6 = "Aula Geografia - 17:50h ~ 18:40h - Mauá";
    });
  }

  void _quartaH() {
    setState(() {
      _linha1 = "Aula DDMII - 13:20h ~ 14:10h - Mauá";
      _linha2 = "Aula DDMII - 14:10h ~ 15:00h - Mauá";
      _linha3 = "Aula UDIAD - 15:00h ~ 15:50h - Mauá";
      _linha4 = "Aula UDIAD - 16:10h ~ 17:00h - Mauá";
      _linha5 = "Aula Inglês - 17:00h ~ 17:50h - Mauá";
      _linha6 = "Aula Inglês - 17:50h ~ 18:40h - Mauá";
    });
  }

  void _quintaH() {
    setState(() {
      _linha1 = "Aula Matemática - 13:20h ~ 14:10h - Mauá";
      _linha2 = "Aula Matemática - 14:10h ~ 15:00h - Mauá";
      _linha3 = "Aula Sociologia - 15:00h ~ 15:50h - Mauá";
      _linha4 = "Aula Matemática - 16:10h ~ 17:00h - Mauá";
      _linha5 = "Aula SWII - 17:00h ~ 17:50h - Mauá";
      _linha6 = "Aula SWII - 17:50h ~ 18:40h - Mauá";
    });
  }

  void _sextaH() {
    setState(() {
      _linha1 = "Aula Espanhol - 13:20h ~ 14:10h - Mauá";
      _linha2 = "Aula Espanhol - 14:10h ~ 15:00h - Mauá";
      _linha3 = "Aula Filosofia - 15:00h ~ 15:50h - Mauá";
      _linha4 = "Aula Português - 16:10h ~ 17:00h - Mauá";
      _linha5 = "Aula IICRCSI - 17:00h ~ 17:50h - Mauá";
      _linha6 = "Aula IICRCSI - 17:50h ~ 18:40h - Mauá";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: _segundaH, child: const Text("Seg"),
                  ),
                  ElevatedButton(
                    onPressed: _tercaH, child: const Text("Ter"),
                  ),
                  ElevatedButton(
                    onPressed: _quartaH, child: const Text("Qua"),
                  ),
                  ElevatedButton(
                    onPressed: _quintaH, child: const Text("Qui"),
                  ),
                  ElevatedButton(
                    onPressed: _sextaH, child: const Text("Sex"),
                  ),
                ],
              ),
            ),

            Text(
              '$_linha1',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              '$_linha2',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              '$_linha3',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              '$_linha4',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              '$_linha5',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              '$_linha6',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
    );
  }
}
