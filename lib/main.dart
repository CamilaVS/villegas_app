import 'package:flutter/material.dart';

void main() => runApp(VillegasApp());

class VillegasApp extends StatefulWidget {
  @override
  _VillegasAppState createState() => _VillegasAppState();
} //fin clase de VillegasApp

class _VillegasAppState extends State<VillegasApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: ThemeData(brightness: Brightness.dark), home: Principal());
  }
} //fin de clase _VillegasAppState

class Principal extends StatefulWidget {
  @override
  _PrincipalState createState() => _PrincipalState();
} //fin clase Principal

class _PrincipalState extends State<Principal> with SingleTickerProviderStateMixin {
  TabController controller;
  void initState() {
    super.initState();
    controller = TabController(
      length: 5,
      vsync: this,
      initialIndex: 0,
    );
  } //fin iniciar estado con tab iconos

  Widget card(String text) {
    return Card(
      color: Colors.cyan,
      child: Container(
        height: 200.0,
        width: 200.0,
        child: Center(child: Text(text)),
      ),
    );
  } //fin de tarjetas

  Tab tab(String text, Icon icon) {
    return Tab(
      icon: icon,
      text: text,
    );
  } //fin de tab enviando texto y el icono

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TabBars VillegasApp"),
        centerTitle: true,
        backgroundColor: Theme.of(context).canvasColor,
        elevation: 0.0,
      ),
      body: TabBarView(
        controller: controller,
        children: <Widget>[
          card("Tarjeta no 1  Mi casa"),
          card("Tarjeta no 2 Modo Avion"),
          card("Tarjeta no 3 Musica"),
          card("Tarjeta no 4 Bluetooth"),
          card("Tarjeta no 5 Wifi"),
        ],
      ),
      bottomNavigationBar: TabBar(
        controller: controller,
        isScrollable: true,
        tabs: <Widget>[
          tab("Casa", Icon(Icons.home)),
          tab("Modo Avion", Icon(Icons.airplanemode_active)),
          tab("Musica", Icon(Icons.audiotrack_sharp)),
          tab("Bluetooth", Icon(Icons.bluetooth)),
          tab("Wifi", Icon(Icons.wifi)),
        ],
      ),
    ); //fin de scafoold
  } //fin de widget
} //fin clase _PrincipalState
