import Flutter
import UIKit

public class SwiftZendeskFlutterCombinationPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "zendesk_flutter_combination", binaryMessenger: registrar.messenger())
    let instance = SwiftZendeskFlutterCombinationPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }
}
