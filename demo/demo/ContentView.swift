//
//  ContentView.swift
//  demo
//
//  Created by Vlad Korzun on 6/27/25.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var cellRebelManager: CellRebelManager
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Image(systemName: "chart.bar.xaxis")
                    .font(.system(size: 60))
                    .foregroundColor(.purple)
                
                Text("CellRebel SDK")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                Text("Version: \(cellRebelManager.sdkVersion)")
                    .font(.caption)
                    .foregroundColor(.secondary)
                
                Text(cellRebelManager.statusMessage)
                    .font(.footnote)
                    .foregroundColor(.gray)
                    .padding()
                    .multilineTextAlignment(.center)
                
                Button(action: {
                    cellRebelManager.startMeasuring()
                }) {
                    Label("Start Measuring", systemImage: "play.fill")
                        .font(.headline)
                        .frame(maxWidth: .infinity)
                }
                .buttonStyle(.borderedProminent)
                .tint(.green)
                
                Button(action: {
                    cellRebelManager.stopMeasuring()
                }) {
                    Label("Stop Measuring", systemImage: "stop.fill")
                        .font(.headline)
                        .frame(maxWidth: .infinity)
                }
                .buttonStyle(.borderedProminent)
                .tint(.orange)
                
                Button(action: {
                    cellRebelManager.clearUserData()
                }) {
                    Label("Clear User Data", systemImage: "trash.fill")
                        .font(.headline)
                        .frame(maxWidth: .infinity)
                }
                .buttonStyle(.bordered)
                .tint(.red)
                
                Spacer()
            }
            .padding()
            .navigationTitle("Dashboard")
            .navigationBarHidden(true)
        }
    }
}
