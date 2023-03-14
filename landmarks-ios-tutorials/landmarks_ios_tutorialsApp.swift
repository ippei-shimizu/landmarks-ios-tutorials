//
//  landmarks_ios_tutorialsApp.swift
//  landmarks-ios-tutorials
//
//  Created by Ippei on 2023/03/13.
//

import SwiftUI

@main
struct landmarks_ios_tutorialsApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
