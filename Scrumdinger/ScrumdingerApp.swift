//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Mohamed Atallah on 26/05/2025.
//

import SwiftUI

///@main attripute informs the system that this is the only entry point for the app.
@main
struct ScrumdingerApp: App {
    @State private var scrums = DailyScrum.sampleData
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: $scrums)
        }
    }
}
