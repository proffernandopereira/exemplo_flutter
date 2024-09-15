import 'package:flutter/material.dart';
import 'package:rastreabilidade_pec_corte_app/screens/Login/login_page.dart';

class Splash_RPC extends StatefulWidget {
  @override
  _Splash_RPCState createState() => _Splash_RPCState();
}

class _Splash_RPCState extends State<Splash_RPC> {
  @override
  void initState() {
    super.initState();
    // Simula um atraso de 5 segundos antes de navegar para a página de login
    Future.delayed(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => LoginPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Colors.cyan, Colors.cyanAccent],
              ),
            ),
          ),
          Center(
            child: Image.asset(
              "assets/images/logoRpc.png",
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}
