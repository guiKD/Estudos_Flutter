import 'package:flutter/material.dart';

void main() {
  runApp(ContatosApp());
}

class Contato {
  String nome;
  String email;
  bool favorito;

  Contato({required this.nome, required this.email, this.favorito = false});
}

class ContatosApp extends StatefulWidget {
  @override
  _ContatosAppState createState() => _ContatosAppState();
}

class _ContatosAppState extends State<ContatosApp> {
  List<Contato> contatos = [
    Contato(nome: 'John Doe', email: 'john_doeoe@gmail.com'),
    Contato(nome: 'Alice O. Austin', email: 'AliceOAustin@rhyta.com'),
    Contato(nome: 'Douglas R. Broadway', email: 'DouglasRBroadway@dayrep.com'),
    Contato(nome: 'Miguel Owens', email: 'miguel.owens@example.com'),
    Contato(nome: 'Lilou Dumont', email: 'lilou.dumont@example.com'),
  ];

  int get favoritosCount => contatos.where((c) => c.favorito).length;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contatos Favoritos',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Contatos Favoritos ($favoritosCount)'),
        ),
        body: ListView.builder(
          itemCount: contatos.length,
          itemBuilder: (context, index) {
            final contato = contatos[index];
            return ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text(
                  contato.nome[0],
                  style: TextStyle(color: Colors.white),
                ),
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
          },
        ),
      ),
    );
  }
}
