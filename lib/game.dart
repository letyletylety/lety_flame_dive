import 'package:flame/game.dart';

import 'components/white_ball.dart';

class MyGame extends FlameGame {
  final ball = WhiteBall();
  @override
  Future<void>? onLoad() {
    add(ball);
    return super.onLoad();
  }
}
