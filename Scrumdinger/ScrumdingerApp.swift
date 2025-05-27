//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Mohamed Atallah on 26/05/2025.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: DailyScrum.sampleData)
        }
    }
}
