import 'dart:ui';

import 'package:flame/game.dart';
import 'package:flutter/material.dart' show Colors;

class MyGame extends FlameGame {
  late Vector2 cir;

  @override
  Future<void>? onLoad() {
    return super.onLoad();
  }

  @override
  void onGameResize(Vector2 size) {
    super.onGameResize(size);

    cir = size / 2;
  }

  @override
  void render(Canvas canvas) {
    canvas.drawCircle(Offset(cir.x, cir.y), 20, Paint()..color = Colors.white);
  }

  @override
  void update(double dt) {
    cir.x += dt * 80;

    if (cir.x > canvasSize.x + 20) {
      cir.x = 0;
    }
  }
}
