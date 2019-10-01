import 'package:flutter/material.dart';

const image1 =
    'https://upload.wikimedia.org/wikipedia/en/thumb/8/87/KaraThrace.jpg/220px-KaraThrace.jpg';
const image2 =
    'https://upload.wikimedia.org/wikipedia/en/thumb/3/37/LeeAdama.jpg/220px-LeeAdama.jpg';
const image3 =
    'https://i.pinimg.com/236x/02/7a/62/027a62e4b1a787409e4c09590c4bffec--movie-characters-fictional-characters.jpg';
const image4 =
    'https://upload.wikimedia.org/wikipedia/en/thumb/b/be/Gaeta_Season_3.jpg/220px-Gaeta_Season_3.jpg';
const image5 =
    'https://live.staticflickr.com/5500/10590382275_b37e4b8273_c.jpg';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter in Motion'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Stack(
          children: <Widget>[
            Positioned(
              child: Image.network(
                image1,
                width: 100,
                height: 100,
              ),
              top: 0,
              left: 0,
            ),
            Positioned(
              child: Image.network(
                image2,
                width: 100,
                height: 100,
              ),
              top: 0,
              right: 0,
            ),
            Positioned(
              child: Image.network(
                image3,
                width: 100,
                height: 100,
              ),
              bottom: 0,
              left: 0,
            ),
            Positioned(
              child: Image.network(
                image4,
                width: 100,
                height: 100,
              ),
              bottom: 0,
              right: 0,
            ),
            Center(
                child: Image.network(
              image5,
              width: 100,
              height: 100,
            )),
          ],
        ),
      ),
    );
  }
}
