//
//  TouchDownApp.swift
//  TouchDown
//
//  Created by Narayanasamy on 12/09/23.
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
