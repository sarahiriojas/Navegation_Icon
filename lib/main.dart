import 'package:flutter/material.dart';

void main() => runApp(RiojasApp());

class RiojasApp extends StatefulWidget {
  @override
  _RiojasAppState createState() => _RiojasAppState();
} //RiojasApp

class _RiojasAppState extends State<RiojasApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, theme: ThemeData(brightness: Brightness.dark), home: Principal());
  }
} // _RiojasAppState

class Principal extends StatefulWidget {
  @override
  _PrincipalState createState() => _PrincipalState();
} //Principal

class _PrincipalState extends State<Principal> with SingleTickerProviderStateMixin {
  TabController controller;
  void initState() {
    super.initState();
    controller = TabController(
      length: 5,
      vsync: this,
      initialIndex: 0,
    );
  } //Estado 5 Iconos

  Widget card(String text) {
    return Card(
      color: Colors.cyan,
      child: Container(
        height: 500.0,
        width: 500.0,
        child: Center(child: Text(text)),
      ),
    );
  } //Tarjeta

  Tab tab(String text, Icon icon) {
    return Tab(
      icon: icon,
      text: text,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Las TabsBars Katia"),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: TabBarView(
        controller: controller,
        children: <Widget>[
          card("Hey soy la tarjeta 1"),
          card("Hey soy la tarjeta 2"),
          card("Hey soy la tarjeta 3"),
          card("Hey soy la tarjeta 4"),
          card("Hey soy la tarjeta 5"),
        ], //Widget
      ),
      bottomNavigationBar: TabBar(
        controller: controller,
        isScrollable: true,
        tabs: <Widget>[
          tab("Casa", Icon(Icons.home_outlined)),
          tab("Favoritos", Icon(Icons.favorite_outlined)),
          tab("Calendario", Icon(Icons.calendar_today_outlined)),
          tab("Soporte", Icon(Icons.support_outlined)),
          tab("Borrar", Icon(Icons.delete_outlined)),
        ],
      ),
    ); //Scaffold
  } //Widget
} //_PrincipalState
