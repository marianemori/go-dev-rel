import 'package:flutter/material.dart';

import '../login/login.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TabBar(
        controller: _tabController,
        indicatorColor: Colors.indigoAccent.shade400,
        labelColor: Colors.indigoAccent.shade400,
        unselectedLabelColor: Colors.grey,
        labelStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
        tabs: const <Widget>[
          Tab(
            text: 'Entrar',
          ),
          Tab(
            text: 'Cadastrar Conta',
          )
        ],
        padding: const EdgeInsets.only(top: 20.0),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const <Widget>[
          LoginPage(),
          Center(
            child: Text("It's rainy here"),
          ),
        ],
      ),
    );
  }
}
