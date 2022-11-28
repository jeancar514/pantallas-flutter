import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class BotonesPage extends StatelessWidget {
  const BotonesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _fondoApp(),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _titulos(),
                _botonesRedondeados(),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: _bottomNavigatorBar(context),
    );
  }

  BottomNavigationBarItem _botonesFooter(IconData icon) {
    return BottomNavigationBarItem(
      label: '',
      icon: Icon(
        icon,
        size: 30.0,
      ),
    );
  }

  Widget _bottomNavigatorBar(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
          canvasColor: Color.fromRGBO(55, 57, 84, 1.0),
          primaryColor: Colors.pinkAccent,
          textTheme: Theme.of(context).textTheme.copyWith()),
      child: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          _botonesFooter(Icons.calendar_today),
          _botonesFooter(Icons.bubble_chart),
          _botonesFooter(Icons.supervised_user_circle),
        ],
      ),
    );
  }

  Widget _fondoApp() {
    final gradiente = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset(0.0, 0.5),
          end: FractionalOffset(0.0, 1.0),
          colors: [
            Color.fromRGBO(52, 54, 101, 1.0),
            Color.fromRGBO(35, 37, 57, 1.0),
          ],
        ),
      ),
    );

    final cajaRosa = Transform.rotate(
        angle: -pi / 5.0,
        child: Container(
          height: 360.0,
          width: 360.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(80.0),
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(236, 98, 188, 1.0),
                  Color.fromRGBO(241, 142, 172, 1.0),
                ],
              )),
        ));

    return Stack(
      children: <Widget>[
        gradiente,
        Positioned(
          top: -100,
          left: -20,
          child: cajaRosa,
        )
      ],
    );
  }

  _titulos() {
    final styleTitle = TextStyle(
      color: Colors.white,
      fontSize: 30.0,
      fontWeight: FontWeight.bold,
      overflow: TextOverflow.clip,
    );
    final styleSubTitle = TextStyle(
      color: Colors.white,
      fontSize: 18.0,
      overflow: TextOverflow.clip,
    );
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Classify transaction',
              style: styleTitle,
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Classify this transaction into a particular categoty',
              style: styleSubTitle,
            ),
          ],
        ),
      ),
    );
  }

  Widget _botonesRedondeados() {
    return Table(
      children: [
        TableRow(
          children: [
            _crearBotonesRedondeados(Colors.blue, Icons.border_all, 'General'),
            _crearBotonesRedondeados(
                Colors.purpleAccent, Icons.directions_bus, 'Bus'),
          ],
        ),
        TableRow(
          children: [
            _crearBotonesRedondeados(Colors.blue, Icons.border_all, 'General'),
            _crearBotonesRedondeados(
                Colors.purpleAccent, Icons.directions_bus, 'Bus'),
          ],
        ),
        TableRow(
          children: [
            _crearBotonesRedondeados(Colors.blue, Icons.border_all, 'General'),
            _crearBotonesRedondeados(
                Colors.purpleAccent, Icons.directions_bus, 'Bus'),
          ],
        ),
        TableRow(
          children: [
            _crearBotonesRedondeados(Colors.blue, Icons.border_all, 'General'),
            _crearBotonesRedondeados(
                Colors.purpleAccent, Icons.directions_bus, 'Bus'),
          ],
        )
      ],
    );
  }

  Widget _crearBotonesRedondeados(Color color, IconData icon, String titulo) {
    return ImageFiltered(
      imageFilter: ImageFilter.blur(
        sigmaX: -1.0,
        sigmaY: -1.0,
      ),
      child: Container(
        height: 180.0,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: Color.fromRGBO(62, 66, 107, 0.7),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 5.0,
            sigmaY: 5.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              CircleAvatar(
                backgroundColor: color,
                radius: 35.0,
                child: Icon(
                  icon,
                  color: Colors.white,
                  size: 30.0,
                ),
              ),
              Text(
                titulo,
                style: TextStyle(
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
