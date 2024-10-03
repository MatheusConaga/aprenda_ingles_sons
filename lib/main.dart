import 'package:aprenda_ingles/screens/bichosPag.dart';
import 'package:aprenda_ingles/screens/numerosPag.dart';
import 'package:aprenda_ingles/screens/vogaisPag.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
    theme: ThemeData(
      scaffoldBackgroundColor: Color(0xfff5e9b9),
    ),
  ));
}


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin{
  late TabController _tabController;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(
        length: 3,
        vsync: this
    );

  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text(
            "Aprenda inglês",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold
          ),
        ),
        bottom: TabBar(
          indicatorWeight: 4,
          indicatorColor: Colors.white,
          controller: _tabController,
          labelColor: Colors.white,
          unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(
                text: "Bichos",
              ),
              Tab(
                text: "Números",
              ),
              Tab(
                text: "Vogais",
              ),
            ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
          children: [
            Bichos(),
            Numeros(),
            Vogais(),
          ],
      ),
    );
  }
}

