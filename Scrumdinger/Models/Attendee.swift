//
//  Attendee.swift
//  Scrumdinger
//
//  Created by Mohamed Atallah on 01/06/2025.
//

import Foundation
import SwiftData

@Model
class Attendee: Identifiable {
    var id: UUID
    var name: String
    var dailyScrum: DailyScrum?
    
    init(id: UUID = UUID(), name: String) {
           self.id = id
           self.name = name
       }
}
