//
//  DetailView.swift
//  Scrumdinger
//
//  Created by Mohamed Atallah on 28/05/2025.
//

import SwiftUI
import SwiftData

struct DetailView: View {
    let scrum: DailyScrum
    
    @State private var isPresentingEditView = false
    @State private var errorWrapper: ErrorWrapper?
    
    var body: some View {
        List {
            Section(header: Text("Meeting info")) {
                NavigationLink(destination: MeetingView(scrum: scrum, errorWrapper: $errorWrapper)) {
                    Label("Start Meeting", systemImage: "timer")
                        .font(.headline)
                        .foregroundColor(.accentColor)
                }
                
                HStack {
                    Label("Length", systemImage: "clock")
                    Spacer()
                    Text("\(scrum.lengthInMinutes) minutes")
                }
                .accessibilityElement(children: .combine)
                HStack {
                    Label("Theme", systemImage: "paintpalette")
                    Spacer()
                    Text("\(scrum.theme.name) theme")
                        .padding(4)
                        .foregroundColor(scrum.theme.accentColor)
                        .background(scrum.theme.mainColor)
                        .cornerRadius(8)
                    
                }
                
            }
            Section(header: Text("Attendees")) {
                ForEach(scrum.attendees) {attendee in
                    Label(attendee.name, systemImage: "person")
                }
            }
            Section(header: Text("History")) {
                if scrum.history.isEmpty {
                    Label("No meetings yet", systemImage: "calendar.badge.exclamationmark")
                }
                ForEach(scrum.history) {history in
                    HStack {
                        Image(systemName: "calendar")
                        Text(history.date, style: .date)
                    }
                }
            }
        }
        .navigationTitle(scrum.title)
        .toolbar {
            Button("Edit") {
                isPresentingEditView = true
            }
        }
        .sheet(isPresented: $isPresentingEditView) {
            NavigationStack {
                DetailEditView(scrum: scrum)
                    .navigationTitle(scrum.title)
            }
        }
        .sheet(item: $errorWrapper, onDismiss: nil) { wrapper in
            ErrorView(errorWrapper: wrapper)
        }
    }
}

#Preview(traits: .dailyScrumssampleData) {
    @Previewable @Query(sort: \DailyScrum.title)  var scrums: [DailyScrum]
    NavigationStack {
        DetailView(scrum: scrums[0])
    }
}
