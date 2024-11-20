import 'dart:async';
import 'dart:ui';

// import 'package:dasar_flame/component/asteoroid.dart';
import 'package:dasar_flame/component/asteoroid_spawner.dart';
import 'package:dasar_flame/component/bgParallaxComponent.dart';
import 'package:dasar_flame/component/ship.dart';
// import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flame/game.dart';
// import 'package:flame/src/game/overlay_manager.dart';

class MyFlameGame extends FlameGame with PanDetector {
  late Ship s;
  late Bgparallaxcomponent bgParallax;
  late AsteoroidSpawner asp;

  @override
  FutureOr<void> onLoad() async {
    bgParallax = Bgparallaxcomponent();
    add(bgParallax);

    // Asteoroid a = Asteoroid();
    // add(a);
    asp = AsteoroidSpawner();
    add(asp);

    s = Ship();
    add(s);
  }

  @override
  //void onTapDown(TapDownEvent event) {
  void onPanUpdate(DragUpdateInfo info) {
    // s.position.add(Vector2(10, 0));
    s.setTujuan(info);
  }
  @override
    void update(double dt){
      bgParallax.changeSpeedBasedShip(s);
      super.update(dt);
    }
   @override
  Color backgroundColor(){
      return const Color(0xFF000045);
   }
  }
  
  



