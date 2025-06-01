//
//  History.swift
//  Scrumdinger
//
//  Created by Mohamed Atallah on 01/06/2025.
//

import Foundation

struct History: Identifiable {
    let id: UUID = UUID()
    let date: Date = Date()
    var attendees: [DailyScrum.Attendee]
}
