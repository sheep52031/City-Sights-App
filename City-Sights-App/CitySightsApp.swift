//
//  City_Sights_AppApp.swift
//  City-Sights-App
//
//  Created by 林家任 on 2022/4/12.
//

import SwiftUI

@main
struct CitySightsApp: App {
    var body: some Scene {
        WindowGroup {
            LaunchView()
                .environmentObject(ContentModel())
        }
    }
}
