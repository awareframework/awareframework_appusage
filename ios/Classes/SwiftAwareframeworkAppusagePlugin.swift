import Flutter
import UIKit

public class SwiftAwareframeworkAppusagePlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "awareframework_appusage", binaryMessenger: registrar.messenger())
    let instance = SwiftAwareframeworkAppusagePlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }
}
