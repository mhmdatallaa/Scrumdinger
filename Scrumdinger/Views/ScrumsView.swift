//
//  ScrumsView.swift
//  Scrumdinger
//
//  Created by Mohamed Atallah on 27/05/2025.
//

import SwiftUI

struct ScrumsView: View {
    let scrums: [DailyScrum]
    var body: some View {
        List(scrums) { scrum in
            CardView(scrum: scrum)
                .listRowBackground(scrum.theme.mainColor)
        }
    }
}

#Preview {
    let scrums = DailyScrum.sampleData
    ScrumsView(scrums: scrums)
}
