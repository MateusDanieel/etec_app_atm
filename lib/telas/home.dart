import 'package:flutter/material.dart';
import 'package:flutter_atm/telas/tela_cliente.dart';
import 'package:flutter_atm/telas/tela_contato.dart';
import 'package:flutter_atm/telas/tela_empresa.dart';
import 'package:flutter_atm/telas/tela_servico.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void _abrirRotaEmpresa() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => TelaEmpresa()));
  }

  void _abrirRotaCliente() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => TelaCliente()));
  }

  void _abrirRotaServico() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => TelaServico()));
  }

  void _abrirRotaContato() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => TelaContato()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ATM Consultoria"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset("img/logo.png"),
            Padding(
              padding: EdgeInsets.only(top: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: _abrirRotaEmpresa,
                    child: Image.asset("img/menu_empresa.png"),
                  ),
                  GestureDetector(
                    onTap: _abrirRotaCliente,
                    child: Image.asset("img/menu_cliente.png"),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: _abrirRotaContato,
                    child: Image.asset("img/menu_contato.png"),
                  ),
                  GestureDetector(
                    onTap: _abrirRotaServico,
                    child: Image.asset("img/menu_servico.png"),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
