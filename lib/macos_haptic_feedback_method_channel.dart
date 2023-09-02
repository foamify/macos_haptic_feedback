import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'macos_haptic_feedback_platform_interface.dart';

/// An implementation of [MacosHapticFeedbackPlatform] that uses method channels.
class MethodChannelMacosHapticFeedback extends MacosHapticFeedbackPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('macos_haptic_feedback');

  @override
  Future<void> generic() async {
    return methodChannel.invokeMethod('generic');
  }

  @override
  Future<void> alignment() async {
    return methodChannel.invokeMethod('alignment');
  }

  @override
  Future<void> levelChange() async {
    return methodChannel.invokeMethod('levelChange');
  }
}
