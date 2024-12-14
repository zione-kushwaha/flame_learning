import 'dart:async';
import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flame/game.dart';

class FlappyDashGame extends FlameGame {
  FlappyDashGame()
      : super(
          world: FlappyDashWorld(),
          camera: CameraComponent.withFixedResolution(width: 600, height: 1000),
        );

  @override
  void onGameResize(Vector2 size) {
    // TODO: implement onGameResize
    super.onGameResize(size);
    print('onGameResize called $size');
  }

  @override
  Future<void> onLoad() async {
    // TODO: implement load
    super.onLoad();
    print('onLoad called');
  }

  @override
  void update(double dt) {
    // TODO: implement update
    super.update(dt);
    print('update called $dt');
  }

  @override
  void render(Canvas canvas) {
    // TODO: implement render
    super.render(canvas);
    print('render called $canvas');
  }
}

class FlappyDashWorld extends World {}
