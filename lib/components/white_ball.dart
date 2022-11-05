import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flutter/material.dart' show Colors;

import '../game.dart';

class WhiteBall extends Component
// {
    with
        HasGameRef<MyGame> {
  late Vector2 cir;

  @override
  void onGameResize(Vector2 size) {
    super.onGameResize(size);

    cir = size / 2;
  }

  @override
  void render(Canvas canvas) {
    final off = cir.toOffset();
    canvas.drawCircle(off, 20, Paint()..color = Colors.white);
  }

  @override
  void update(double dt) {
    cir.x += dt * 80;

    if (cir.x > gameRef.canvasSize.x + 20) {
      cir.x = 0;
    }
  }
}
