import 'package:flutter/material.dart';

class WalletApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WalletAppHomePage(),
    );
  }
}

class WalletAppHomePage extends StatefulWidget {
  @override
  _WalletAppHomePageState createState() => _WalletAppHomePageState();
}

class _WalletAppHomePageState extends State<WalletAppHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe7e9f2),
      bottomNavigationBar: BottomNavigationBar(
        items: [],
      ),
    );
  }
}
