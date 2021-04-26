import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class AppGradients {
  static final linear = LinearGradient(colors: [
    Color(0xFF556270),
    Color.fromRGBO(255, 107, 107, 0.695),
  ], stops: [
    0.0,
    0.659
  ], transform: GradientRotation(2.13959913 * pi));
}
