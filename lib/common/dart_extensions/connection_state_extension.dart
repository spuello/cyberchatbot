import 'package:flutter/material.dart';

extension ConnectionStateExt on ConnectionState {
  bool get isDone => this == ConnectionState.done;
  bool get isWaiting => this == ConnectionState.waiting;
}
