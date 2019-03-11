import Flutter
import TwitterKit

public class TwitterLoginPluginSwift: NSObject, FlutterPlugin {
  var _channel: FlutterMethodChannel

  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "com.roughike/flutter_twitter_login", binaryMessenger: registrar.messenger())
    let instance = TwitterLoginPluginSwift(channel: channel)
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  init(channel: FlutterMethodChannel) {
    _channel = channel
    super.init()
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    print("iOS => call \(call.method)")

    switch call.method {
    default:
      result(FlutterMethodNotImplemented)
    }
    result(1)
  }
}
