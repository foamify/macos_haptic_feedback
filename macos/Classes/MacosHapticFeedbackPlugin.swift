import Cocoa
import FlutterMacOS

public class MacosHapticFeedbackPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "macos_haptic_feedback", binaryMessenger: registrar.messenger)
    let instance = MacosHapticFeedbackPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    case "generic":
      triggerHapticFeedback(pattern: "generic")
      result(nil)
    case "alignment":
      triggerHapticFeedback(pattern: "alignment")
      result(nil)
    case "levelChange":
      triggerHapticFeedback(pattern: "levelChange")
      result(nil)
    default:
      result(FlutterMethodNotImplemented)
    }
  }

  private func triggerHapticFeedback(pattern: String?) {
    if #available(macOS 10.10, *) {
      let feedback = NSHapticFeedbackManager.defaultPerformer
      if let pattern = pattern {
        switch pattern {
        case "generic":
          feedback.perform(.generic, performanceTime: .now)
        case "alignment":
          feedback.perform(.alignment, performanceTime: .now)
        case "levelChange":
          feedback.perform(.levelChange, performanceTime: .now)
        default:
          break
        }
      }
    }
  }
}
