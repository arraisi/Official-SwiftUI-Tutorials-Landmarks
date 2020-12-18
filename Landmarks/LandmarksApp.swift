//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Abdul R. Arraisi on 17/12/20.
//

import SwiftUI

@main
struct LandmarksApp: App {
    
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
