//
//  CoreDataProjectApp.swift
//  CoreDataProject
//
//  Created by Joseph Langat on 24/07/2023.
//

import SwiftUI

@main
struct CoreDataProjectApp: App {
    @StateObject private var dataController = DataConroller()
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
