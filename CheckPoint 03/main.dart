import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ContatosApp(),
    );
  }
}

class Contato {
  String nome;
  String email;
  bool favorito;

  Contato({required this.nome, required this.email, this.favorito = false});
}

class ContatosApp extends StatefulWidget {
  const ContatosApp({super.key});

  @override
  State<ContatosApp> createState() => _ContatosAppState();
}

class _ContatosAppState extends State<ContatosApp> {
  List<Contato> contatos = [
    Contato(nome: 'Gui', email: 'gui@gmail.com'),
    Contato(nome: 'Marcos', email: 'marcos@gmail.com'),
    Contato(nome: 'Vini', email: 'vini@gmail.com'),
    Contato(nome: 'Arthur', email: 'arthur@gmail.com'),
    Contato(nome: 'Rafa', email: 'rafa@gmail.com')
  ];

  int get favoritosCount => contatos.where((c) => c.favorito).length;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contatos favoritos $favoritosCount'),
      ),
      body: ListView.builder(
          itemCount: contatos.length,
          itemBuilder: (context, index) {
            final contato = contatos[index];
            return ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text(contato.nome[0]),
              ),
              title: Text(contato.nome),
              subtitle: Text(contato.email),
              trailing: IconButton(
                icon: Icon(
                  contato.favorito ? Icons.favorite : Icons.favorite_border,
                  color: contato.favorito ? Colors.red : Colors.grey,
                ),
                onPressed: () {
                  setState(() {
                    contato.favorito = !contato.favorito;
                  });
                },
              ),
            );
          }),
    );
  }
}
