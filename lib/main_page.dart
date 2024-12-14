import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:g1/flappy_dash_game.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late FlappyDashGame _flappyDashGame;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _flappyDashGame = FlappyDashGame();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GameWidget(game: _flappyDashGame),
    );
  }
}
