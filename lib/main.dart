import 'package:flutter/material.dart';

void main() {
  runApp(ByteBank());
}

class ByteBank extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: FormularioTransferencia());
  }
}

class FormularioTransferencia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Criando Transferência")),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              style: TextStyle(fontSize: 24.0),
              decoration: InputDecoration(
                labelText: "Conta",
                hintText: "0000-0",
              ),
              keyboardType: TextInputType.number,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              style: TextStyle(fontSize: 24.0),
              decoration: InputDecoration(
                icon: Icon(Icons.monetization_on),
                labelText: "Valor",
                hintText: "0.00",
              ),
              keyboardType: TextInputType.number,
            ),
          ),
          ElevatedButton(
            child: Text("Confirmar"),
          )
        ],
      ),
    );
  }
}

class ListaTransferencias extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Transferências")),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
        ),
        body: Column(
          children: [
            ItemTransferencia(Transferencia(200, "1000-3")),
            ItemTransferencia(Transferencia(500.93, "10120-2")),
            ItemTransferencia(Transferencia(800, "10320-3")),
          ],
        ));
  }
}

class ItemTransferencia extends StatelessWidget {
  Transferencia transferencia;

  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
      leading: Icon(Icons.monetization_on),
      title: Text(transferencia.valor.toString()),
      subtitle: Text(transferencia.numeroConta),
    ));
  }

  ItemTransferencia(this.transferencia);
}

class Transferencia {
  double valor;
  String numeroConta;

  Transferencia(this.valor, this.numeroConta);
}
