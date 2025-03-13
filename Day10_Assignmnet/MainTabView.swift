//
//  MainTabView.swift
//  Day10_Assignmnet
//
//  Created by Taibah Valley Academy on 13/09/1446 AH.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            FlowerHomePage()
                .tabItem {
                    Label("Home", systemImage: "house")
                }

            FavoritesView()
                .tabItem {
                    Label("Favorites", systemImage: "star")
                }
            
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }

        }
    }
}

#Preview {
    MainTabView()
}

