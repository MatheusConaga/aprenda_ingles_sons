import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class Bichos extends StatefulWidget {
  const Bichos({super.key});

  @override
  State<Bichos> createState() => _BichosState();
}

class _BichosState extends State<Bichos> {
  
  // double largura = MediaQuery.of(context).size.width;
  // double altura = MediaQuery.of(context).size.height;
  AudioPlayer _audioPlayer = AudioPlayer();
  _executar(String nomeAudio) async{
   await _audioPlayer.play(AssetSource("sounds/$nomeAudio.mp3"));
  }

  
  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 2,
      childAspectRatio: MediaQuery.of(context).size.aspectRatio * 2,
      // scrollDirection: Axis.horizontal,
      children: [
        GestureDetector(
          onTap: () {
            _executar("cao");
          },
          child: Image.asset("assets/images/cao.png"),
        ),
        GestureDetector(
          onTap: (){
            _executar("gato");
          },
          child: Image.asset("assets/images/gato.png"),
        ),
        GestureDetector(
          onTap: (){
            _executar("leao");
          },
          child: Image.asset("assets/images/leao.png"),
        ),
        GestureDetector(
          onTap: (){
            _executar("macaco");

          },
          child: Image.asset("assets/images/macaco.png"),
        ),
        GestureDetector(
          onTap: (){
            _executar("ovelha");

          },
          child: Image.asset("assets/images/ovelha.png"),
        ),
        GestureDetector(
          onTap: (){
            _executar("vaca");

          },
          child: Image.asset("assets/images/vaca.png"),
        ),
      ],
    );
  }
}
