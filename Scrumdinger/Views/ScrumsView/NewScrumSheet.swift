//
//  NewScrumSheet.swift
//  Scrumdinger
//
//  Created by Mohamed Atallah on 01/06/2025.
//

import SwiftUI

struct NewScrumSheet: View {

    var body: some View {
        NavigationStack {
            DetailEditView(scrum: nil)
        }
    }
}

#Preview {
    NewScrumSheet()
}
