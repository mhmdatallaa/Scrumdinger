//
//  ThemeView.swift
//  Scrumdinger
//
//  Created by Mohamed Atallah on 29/05/2025.
//

import SwiftUI
import ThemeKit

struct ThemeView: View {
    let theme: Theme
    var body: some View {
        Text(theme.name)
            .padding(4)
            .frame(maxWidth: .infinity)
            .background(theme.mainColor)
            .foregroundColor(theme.accentColor)
            .clipShape(RoundedRectangle(cornerRadius: 4))
    }
}

#Preview {
    ThemeView(theme: .buttercup)
}
