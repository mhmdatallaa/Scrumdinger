//
//  DailyScrum.swift
//  Scrumdinger
//
//  Created by Mohamed Atallah on 27/05/2025.
//

import Foundation
import ThemeKit

struct DailyScrum: Identifiable {
    let id: UUID = UUID()
    var title: String
    var attendees: [String]
    var lengthInMinutes: Int
    var theme: Theme
}
