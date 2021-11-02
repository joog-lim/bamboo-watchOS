//
//  bamboo_watchOSApp.swift
//  bamboo-watchOS WatchKit Extension
//
//  Created by gsm10 on 2021/11/02.
//

import SwiftUI

@main
struct bamboo_watchOSApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
