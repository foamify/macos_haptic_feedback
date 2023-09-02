import 'macos_haptic_feedback_platform_interface.dart';

/// A class that provides trackpad haptic feedback functionality for macOS applications.
/// Provides three types of haptic feedback patterns: generic, alignment, and level change.
class MacosHapticFeedback {
  /// access to the Singleton instance of MacosHapticFeedback
  static final instance = MacosHapticFeedback();

  /// A general haptic feedback pattern. Use this when no other feedback patterns apply.
  Future<void> generic() {
    return MacosHapticFeedbackPlatform.instance.generic();
  }

  /// A haptic feedback pattern to be used in response to the alignment of an object the user is dragging around. For example, this pattern of feedback could be used in a drawing app when the user drags a shape into alignment with another shape. Other scenarios where this type of feedback could be used might include scaling an object to fit within specific dimensions, positioning an object at a preferred location, or reaching the beginning/minimum or end/maximum of something, such as a track view in an audio/video app.
  Future<void> alignment() {
    return MacosHapticFeedbackPlatform.instance.alignment();
  }

  /// A haptic feedback pattern to be used as the user moves between discrete levels of pressure. This pattern of feedback is used by multilevel accelerator buttons (class NSMultiLevelAcceleratorButton).
  Future<void> levelChange() {
    return MacosHapticFeedbackPlatform.instance.levelChange();
  }
}
