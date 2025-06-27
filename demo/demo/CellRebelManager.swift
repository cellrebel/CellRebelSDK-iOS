//
//  CellRebelManager.swift
//  demo
//
//  Created by Vlad Korzun on 6/27/25.
//

import Foundation
import SwiftUI
import CellRebelSDK

class CellRebelManager: ObservableObject {
    
    private let cellRebel: CellRebel
    
    @Published var sdkVersion: String = "Unknown"
    @Published var statusMessage: String = "Manager Initialized"
    
    init(clientKey: String) {
        self.cellRebel = CellRebel(clientKey: clientKey)
        print("CellRebel instance created.")
        fetchVersion()
    }
    
    func fetchVersion() {
        self.sdkVersion = self.cellRebel.version
        self.statusMessage = "SDK Version: \(self.sdkVersion)"
        print("CellRebel SDK Version: \(self.sdkVersion)")
    }
    
    func startMeasuring() {
        self.cellRebel.startMeasuring()
        self.statusMessage = "Measurement Started"
        print("CellRebel: Measurement Started.")
    }
    
    func stopMeasuring() {
        self.cellRebel.stopMeasuring()
        self.statusMessage = "Measurement Stopped"
        print("CellRebel: Measurement Stopped.")
    }
    
    func clearUserData() {
        self.cellRebel.clearUserData()
        self.statusMessage = "User Data Cleared"
        print("CellRebel: User Data Cleared.")
    }
}
