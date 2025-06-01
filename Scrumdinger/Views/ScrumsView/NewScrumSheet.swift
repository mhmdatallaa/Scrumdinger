//
//  NewScrumSheet.swift
//  Scrumdinger
//
//  Created by Mohamed Atallah on 01/06/2025.
//

import SwiftUI

struct NewScrumSheet: View {
    @State private var newScrum = DailyScrum.emptyScurm
    @Binding var scrums: [DailyScrum]
    var body: some View {
        NavigationStack {
            DetailEditView(scrum: $newScrum, saveEdits: {dailyScrum in
                // MARK: dailyScrum instead of newScrum
                scrums.append(newScrum)
            })
        }
    }
}

#Preview {
    NewScrumSheet(scrums: .constant(DailyScrum.sampleData))
}
