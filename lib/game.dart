import 'package:flame/game.dart';

import 'components/red_ball.dart';
import 'components/white_ball.dart';

class MyGame extends FlameGame {
  final ball = WhiteBall();
  final redball = RedBall();

  @override
  Future<void>? onLoad() {
    add(ball);
    add(redball);
    return super.onLoad();
  }
}
