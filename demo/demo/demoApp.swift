//
//  demoApp.swift
//  demo
//
//  Created by Vlad Korzun on 6/27/25.
//

import SwiftUI

@main
struct demoApp: App {
    
    @StateObject private var cellRebelManager = CellRebelManager(clientKey: "d7mrw1n1ig")
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(cellRebelManager)
        }
    }
}
