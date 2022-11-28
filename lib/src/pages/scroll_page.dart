import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {
  const ScrollPage({super.key});

  @override
  Widget build(BuildContext context) {
    // PageView : para cambiar de pagina mas facil
    return PageView(
      scrollDirection: Axis.vertical,
      children: [
        _pagina1(),
        _pagina2(),
      ],
    );
  }

  Widget _pagina1() {
    return Stack(
      children: <Widget>[
        _colorFondo(),
        _imagenFondo(),
        _textos(),
      ],
    );
  }

  Widget _colorFondo() {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
    );
  }

  Widget _imagenFondo() {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: Image(
        image: AssetImage('assets/scroll.png'),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _textos() {
    final styleText = TextStyle(color: Colors.white, fontSize: 50.0);
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: Text(
              '11°',
              style: styleText,
            ),
          ),
          Text(
            'Miercoles',
            style: styleText,
          ),
          Expanded(child: Container()),
          Icon(
            Icons.keyboard_arrow_down,
            size: 70.0,
            color: Colors.white,
          ),
        ],
      ),
    );
  }

  Widget _pagina2() {
    return Stack(
      children: <Widget>[
        _colorFondo(),
        _button(),
      ],
    );
  }

  Widget _button() {
    final styleButton = ElevatedButton.styleFrom(
      backgroundColor: Colors.blue,
      padding: EdgeInsets.symmetric(horizontal: 60.0, vertical: 20.0),
      textStyle: TextStyle(
          fontSize: 20.0, fontWeight: FontWeight.bold, letterSpacing: 2.0),
    );
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: ElevatedButton(
          onPressed: () {},
          child: Text(
            'Boton',
          ),
          style: styleButton,
        ),
      ),
    );
  }
}
