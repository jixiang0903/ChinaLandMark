//
//  ChinaLandMarkApp.swift
//  ChinaLandMark
//
//  Created by jixiang on 2021/11/5.
//

import SwiftUI
class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        print("log-didFinishLaunching")
        return true
    }
    func applicationDidReceiveMemoryWarning(_ application: UIApplication) {
        print("log-DidReceiveMemoryWarning")
    }
}
@main
struct ChinaLandMarkApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    @Environment(\.scenePhase) var scenePhase
    var body: some Scene {
        WindowGroup {
            LandmarkDetail()
        }.onChange(of: scenePhase) { newValue in
            switch newValue {
            case .active:
                print("应用启动了")
            case .inactive:
                print("应用休眠了")
            case .background:
                print("应用在后台展示")
            default:
                print("default")
            }
        }
    }
}
