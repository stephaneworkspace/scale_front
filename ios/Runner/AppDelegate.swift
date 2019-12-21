import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    // Call swift
    let methodChannel = "stephaneworkspace.scale/rust-services"
    let controller: FlutterViewController = window?.rootViewController as! FlutterViewController
    let CHANNEL = FlutterMethodChannel(name: methodChannel, binaryMessenger: controller.binaryMessenger)
    CHANNEL.setMethodCallHandler { /*[unowned self]*/ (methodCall, result) in
        if methodCall.method == "Printy" {
            result("Hi from Swift")
        }
    }
    // En call swift
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
