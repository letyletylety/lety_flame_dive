import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flutter/material.dart' show Colors;

import '../game.dart';

class RedBall extends Component
// {
    with
        HasGameRef<MyGame> {
  late Vector2 cir;

  @override
  void onGameResize(Vector2 size) {
    super.onGameResize(size);

    cir = size / 2 + Vector2.all(40);
  }

  @override
  void render(Canvas canvas) {
    final off = cir.toOffset();
    canvas.drawCircle(off, 20, Paint()..color = Colors.red);
  }

  @override
  void update(double dt) {
    cir.x += dt * 160;

    if (cir.x > gameRef.canvasSize.x + 20) {
      cir.x = 0;
    }
  }
}
