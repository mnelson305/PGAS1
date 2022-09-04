//
//  Assisngment1MASApp.swift
//  Assisngment1MAS
//
//  Created by Maxwell Nelson  on 9/4/22.
//

import SwiftUI
import FirebaseCore

@main
struct Assisngment1MASApp: App {
    //register Firebase setup
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()
    return true
  }
}
