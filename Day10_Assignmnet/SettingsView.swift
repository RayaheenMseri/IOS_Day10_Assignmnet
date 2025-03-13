//
//  SettingsView.swift
//  Day10_Assignmnet
//
//  Created by Taibah Valley Academy on 13/09/1446 AH.
//

import SwiftUI

struct SettingsView: View {
    @State private var isDarkMode = false

    var body: some View {
        VStack { // change to dark mode
            Toggle("Enable Dark Mode", isOn: $isDarkMode)
                .padding()
        }
        .preferredColorScheme(isDarkMode ? .dark : .light)
    }
}


#Preview {
    SettingsView()
}
