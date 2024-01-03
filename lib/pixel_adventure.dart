import 'dart:async';
import 'dart:ui';

import 'package:best1/levels/level.dart';
import 'package:flame/components.dart';
import 'package:flame/game.dart';

class PixelAdventure extends FlameGame {

  @override
  Color backgroundColor() => const Color(0xFF211F30);

  late final CameraComponent cam;
  final world = Level(levelName: 'Level-01');

  @override
  FutureOr<void> onLoad() async {
    // load all images to cache
    await images.loadAllImages();

    cam = CameraComponent.withFixedResolution(world: world, width: 640, height: 360);
    cam.viewfinder.anchor = Anchor.topLeft;
    addAll([cam, world]);
    return super.onLoad();
  }
}