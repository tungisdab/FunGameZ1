import 'package:best1/pixel_adventure.dart';
import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Flame.device.fullScreen();
  Flame.device.setLandscape();
  PixelAdventure game = PixelAdventure();
  runApp(
    GameWidget(game: kDebugMode ? PixelAdventure() : game),
  );
}

