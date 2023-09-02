import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'macos_haptic_feedback_method_channel.dart';

abstract class MacosHapticFeedbackPlatform extends PlatformInterface {
  /// Constructs a MacosHapticFeedbackPlatform.
  MacosHapticFeedbackPlatform() : super(token: _token);

  static final Object _token = Object();

  static MacosHapticFeedbackPlatform _instance =
      MethodChannelMacosHapticFeedback();

  /// The default instance of [MacosHapticFeedbackPlatform] to use.
  ///
  /// Defaults to [MethodChannelMacosHapticFeedback].
  static MacosHapticFeedbackPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [MacosHapticFeedbackPlatform] when
  /// they register themselves.
  static set instance(MacosHapticFeedbackPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  /// A general haptic feedback pattern. Use this when no other feedback patterns apply.
  Future<void> generic() {
    throw UnimplementedError('generic() has not been implemented.');
  }

  /// A haptic feedback pattern to be used in response to the alignment of an object the user is dragging around. For example, this pattern of feedback could be used in a drawing app when the user drags a shape into alignment with another shape. Other scenarios where this type of feedback could be used might include scaling an object to fit within specific dimensions, positioning an object at a preferred location, or reaching the beginning/minimum or end/maximum of something, such as a track view in an audio/video app.
  Future<void> alignment() {
    throw UnimplementedError('alignment() has not been implemented.');
  }

  /// A haptic feedback pattern to be used as the user moves between discrete levels of pressure. This pattern of feedback is used by multilevel accelerator buttons (class NSMultiLevelAcceleratorButton).
  Future<void> levelChange() {
    throw UnimplementedError('levelChange() has not been implemented.');
  }
}
