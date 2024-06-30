//
//  TouchdownApp.swift
//  Touchdown
//
//  Created by Ussama Irfan on 29/06/2024.
//

import SwiftUI

@main
struct TouchdownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
