import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              _imageTop(),
              _descriptionPuntuacion(),
              _Actions(),
              _descriptionText(),
              _descriptionText(),
              _descriptionText(),
              _descriptionText(),
              _descriptionText(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _imageTop() {
    return Container(
      width: double.infinity,
      child: FadeInImage(
        fit: BoxFit.cover,
        height: 190.0,
        placeholder: NetworkImage(
            'https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/No-Image-Placeholder.svg/1665px-No-Image-Placeholder.svg.png'),
        image: NetworkImage(
            'https://images.unsplash.com/photo-1503614472-8c93d56e92ce?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8NGslMjBsYW5kc2NhcGV8ZW58MHx8MHx8&w=1000&q=80'),
      ),
    );
  }

  Widget _descriptionPuntuacion() {
    final styleTitle = TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
        overflow: TextOverflow.ellipsis);

    final styleSubTitle = TextStyle(
      fontSize: 18.0,
      color: Colors.blueGrey.shade400,
      overflow: TextOverflow.ellipsis,
    );
    final stylePuntuacion = TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.bold,
    );

    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 25.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Lago con montañas', style: styleTitle),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text('Un lago que se encuentra en alemania',
                      style: styleSubTitle),
                ],
              ),
            ),
            Icon(
              Icons.star_purple500_outlined,
              color: Colors.red,
              size: 30.0,
            ),
            SizedBox(
              width: 5.0,
            ),
            Text(
              '${41}',
              style: stylePuntuacion,
            ),
          ],
        ),
      ),
    );
  }

  Widget _Actions() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _ActionsButton('CALL', Icons.call),
          _ActionsButton('ROUTE', Icons.near_me),
          _ActionsButton('SHARE', Icons.share),
        ],
      ),
    );
  }

  Widget _ActionsButton(String description, IconData icon) {
    final styleText = TextStyle(
      color: Colors.blueAccent,
      fontSize: 15.0,
      fontWeight: FontWeight.normal,
    );
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.blueAccent,
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(
          description,
          style: styleText,
        )
      ],
    );
  }

  Widget _descriptionText() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 35.0, vertical: 20.0),
        child: Text(
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}
