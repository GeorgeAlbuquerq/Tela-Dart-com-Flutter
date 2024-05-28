import 'package:flutter/material.dart';

void main() => runApp(MeuApp());

class MeuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TelaInicial(),
    );
  }
}

class TelaInicial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF346CBD), // Cor personalizada do AppBar
        title: Text('Olá, Cliente'),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF346CBD), Colors.white], // Gradiente de azul para branco
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CartaoCredito(
                      nome: 'GS3 TEC',
                      limiteDisponivel: 'R\$ 7.867,80',
                      melhorDia: '20',
                    ),
                    SizedBox(width: 16), // Espaço entre os cartões
                    CartaoCredito(
                      nome: 'GS4 TEC',
                      limiteDisponivel: 'R\$ 3.452,90',
                      melhorDia: '15',
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  'Meus favoritos',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    BotaoFavorito(icon: Icons.credit_card, label: 'Cartão virtual'),
                    BotaoFavorito(icon: Icons.credit_card, label: 'Cartão adicional'),
                    BotaoFavorito(icon: Icons.security, label: 'Seguros'),
                    BotaoFavorito(icon: Icons.local_offer, label: 'Pacotes'),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  'Últimos lançamentos',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Hoje, 05 Set',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 16,
                      ),
                    ),
                   ],
                ),
                ListTile(
                  leading: Icon(Icons.phone_iphone, color: Colors.black),
                  title: Text('Apple', style: TextStyle(color: Colors.black)),
                  subtitle: Text('05/09 às 22:35', style: TextStyle(color: Colors.grey)),
                  trailing: Text('R\$545,99', style: TextStyle(color: Colors.black)),
                  
                ),
                ListTile(
                  leading: Icon(Icons.directions_car, color: Colors.black),
                  title: Text('Uber*Uber*Trip', style: TextStyle(color: Colors.black)),
                  subtitle: Text('05/09 às 15:25', style: TextStyle(color: Colors.grey)),
                  trailing: Text('R\$12,96', style: TextStyle(color: Colors.black)),
                ),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '03 Set',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                ListTile(
                  leading: Icon(Icons.shopping_cart, color: Colors.black),
                  title: Text('Carrefour', style: TextStyle(color: Colors.black)),
                  subtitle: Text('03/09 às 09:34', style: TextStyle(color: Colors.grey)),
                  trailing: Text('R\$349,76\nem 3x', style: TextStyle(color: Colors.black)),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Color(0xFF346CBD),
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Início',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt),
            label: 'Fatura',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.credit_card),
            label: 'Cartão',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shop),
            label: 'Loja',
          ),
        ],
      ),
    );
  }
}

class CartaoCredito extends StatelessWidget {
  final String nome;
  final String limiteDisponivel;
  final String melhorDia;

  CartaoCredito({
    required this.nome,
    required this.limiteDisponivel,
    required this.melhorDia,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 301,
      height: 140,
      margin: EdgeInsets.only(top: 96, left: 17),
      decoration: BoxDecoration(
        color: Color(0xFF346CBD), // Cor de fundo do cartão
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(nome, style: TextStyle(color: Colors.white)),
            Text('Limite disponível\n$limiteDisponivel', style: TextStyle(color: Colors.white)),
            Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Melhor dia de compra', style: TextStyle(color: Colors.white)),
                Text(melhorDia, style: TextStyle(color: Colors.white)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class BotaoFavorito extends StatelessWidget {
  final IconData icon;
  final String label;

  const BotaoFavorito({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: IconButton(
            icon: Icon(icon, size: 40, color: Color(0xFF346CBD)),
            onPressed: () {},
          ),
        ),
        SizedBox(height: 5),
        Text(label, style: TextStyle(color: Colors.white)),
      ],
    );
  }
}

