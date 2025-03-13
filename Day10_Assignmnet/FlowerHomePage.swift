//
//  FlowerHomePage.swift
//  Day10_Assignmnet
//
//  Created by Taibah Valley Academy on 13/09/1446 AH.
//
import SwiftUI

// FlowerHomePage is the main view displaying a grid of flowers
struct FlowerHomePage: View {
    @Namespace private var animation // Namespace for smooth animations between views
    @State var selectedFlower: Flower? // Holds the selected flower to show its details
    @ObservedObject private var viewModel : FlowerViewModel = FlowerViewModel() // Observed object for the flower data (fetching flowers)

    var body: some View {
        NavigationStack {
            GeometryReader { geometry in
                ScrollView {
                    // Define grid columns with adaptive width based on screen size
                    let columns: [GridItem] = [
                        GridItem(.adaptive(minimum: geometry.size.width * 0.9)) // Adapt grid items to take up 90% of the screen width
                    ]
                    
                    // LazyVGrid to display flowers in a flexible grid layout
                    LazyVGrid(columns: columns, spacing: 20) {
                        // Iterate over the flowers from the view model and display each flower in a card
                        ForEach(viewModel.flowers) { flower in
                            FlowerCard(flower: flower, animation: animation) // Each flower is displayed as a card
                                .frame(width: geometry.size.width * 0.9) // Set the width to 90% of the screen size
                                .onTapGesture {
                                    withAnimation(.spring()) { // Animate flower selection with a spring effect
                                        selectedFlower = flower // Set the selected flower when tapped
                                    }
                                }
                        }
                    }
                    .padding() // Adds padding around the grid
                }
            }
            .navigationTitle("Flowers") // Sets the navigation bar title
            .background(Color.white.edgesIgnoringSafeArea(.all)) // Sets the background color to white
            .overlay(
                Group {
                    if let selectedFlower = selectedFlower {
                        // If a flower is selected, show the FlowerDetailView overlaid with a transition animation
                        FlowerDetailView(flower: selectedFlower, animation: animation, selectedFlower: $selectedFlower)
                            .transition(.move(edge: .trailing)) // Transition for the detail view to slide in from the right
                            .zIndex(1) // Ensures the detail view appears above the grid
                    }
                }
            )
        }
    }
}
