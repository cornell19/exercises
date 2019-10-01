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
      body: const Text('Start Here'),
    );
  }
}
