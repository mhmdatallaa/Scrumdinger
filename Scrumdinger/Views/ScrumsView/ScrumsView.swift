//
//  ScrumsView.swift
//  Scrumdinger
//
//  Created by Mohamed Atallah on 27/05/2025.
//

import SwiftUI

struct ScrumsView: View {
    @Binding var scrums: [DailyScrum]
//    @State private var scrum = DailyScrum.emptyScurm
    var body: some View {
        NavigationStack {
            List($scrums) { $scrum in
                NavigationLink(destination: DetailView(scrum: $scrum)) {
                    CardView(scrum: scrum)
                }
                .listRowBackground(scrum.theme.mainColor)
            }
            .navigationTitle("Daily Scrums")
            .toolbar {
                Button(action: {}) {
                    Image(systemName: "plus")
                }
                .accessibilityLabel("New Scrum")
            }
        }
    }
}

#Preview {
    @Previewable @State var scrums = DailyScrum.sampleData
    ScrumsView(scrums: $scrums)
}
