import 'package:flutter/material.dart';

void main() {
  runApp(ProdutosApp());
}

class Produto {
  String nome;
  double preco;
  bool curtido;

  Produto({required this.nome, required this.preco, this.curtido = false});
}

class ProdutosApp extends StatefulWidget {
  @override
  State<ProdutosApp> createState() => _ProdutosAppState();
}

class _ProdutosAppState extends State<ProdutosApp> {
  List<Produto> produtos = [
    Produto(nome: 'Camiseta Nike', preco: 139.90),
    Produto(nome: 'Calça Jeans', preco: 89.90),
    Produto(nome: 'Tênis Adidas', preco: 149.90),
    Produto(nome: 'Boné New Era', preco: 129.90),
    Produto(nome: 'Óculos Ray-Ban', preco: 779.90),
  ];

  int get curtidosCount => produtos.where((p) => p.curtido).length;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Produtos Curtidos',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Meus Produtos Curtidos ($curtidosCount)'),
        ),
        body: ListView.builder(
          itemCount: produtos.length,
          itemBuilder: (context, index) {
            final produto = produtos[index];
            return ListTile(
              title: Text('${produto.nome} - R\$ ${produto.preco.toStringAsFixed(2)}'),
              trailing: IconButton(
                icon: Icon(
                  produto.curtido ? Icons.favorite : Icons.favorite_border,
                  color: produto.curtido ? Colors.pink : Colors.grey,
                ),
                onPressed: () {
                  setState(() {
                    produto.curtido = !produto.curtido;
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
