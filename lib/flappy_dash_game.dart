import 'dart:async';
import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flame/palette.dart';

class FlappyDashGame extends FlameGame {
  FlappyDashGame()
      : super(
          world: FlappyDashWorld(),
          camera: CameraComponent.withFixedResolution(width: 600, height: 1000),
        );
}

class FlappyDashWorld extends World {
  @override
  void onLoad() {
    super.onLoad();
    add(Dash());
  }
}

class Dash extends PositionComponent {
  Dash()
      : super(
          position: Vector2(100, 100),
          size: Vector2(50, 50),
        );

  @override
  void render(Canvas canvas) {
    super.render(canvas);
    canvas.drawRect(size.toRect(), BasicPalette.green.paint());
  }

  @override
  void update(double dt) {
    super.update(dt);
    position = Vector2(0, 100 * dt);
    angle = angle + 0.01;
  }
}
