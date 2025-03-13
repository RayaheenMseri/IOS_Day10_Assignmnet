//
//  FlowerDetailView.swift
//  Day10_Assignmnet
//
//  Created by Taibah Valley Academy on 13/09/1446 AH.
//

import SwiftUI

// FlowerDetailView displays the details of a selected flower
struct FlowerDetailView: View {
    let flower: Flower // The flower object passed into the view
    var animation: Namespace.ID // The namespace for animation matching
    @Binding var selectedFlower: Flower? // Binding to track the selected flower, to close the view when set to nil
    
    var body: some View {
        VStack {
            Spacer() // Adds space at the top
            
            // Image view for the flower
            Image(flower.image)
                .resizable() // Makes the image resizable
                .scaledToFit() // Ensures the image scales to fit the frame
                .frame(height: 300) // Sets the image height to 300
                .clipShape(RoundedRectangle(cornerRadius: 20)) // Clips the image to have rounded corners
                .matchedGeometryEffect(id: flower.id, in: animation) // Matches animation for smooth transition when flower detail changes
            
            // Flower's name
            Text(flower.name)
                .font(.largeTitle) // Sets large title font
                .fontWeight(.bold) // Makes the font bold
                .padding(.top, 20) // Adds space above the name text
            
            // Flower's description
            Text(flower.description)
                .font(.body) // Sets body font style
                .padding(.top, 10) // Adds space above the description text
                .padding(.horizontal, 20) // Adds horizontal padding
                .foregroundColor(.gray) // Sets text color to gray
                .multilineTextAlignment(.center) // Centers the multiline text
            
            // Button to close the detail view
            Button("Close") {
                withAnimation {
                    // Sets the selectedFlower binding to nil to close the detail view
                    selectedFlower = nil
                }
            }
            .padding() // Adds padding around the button
            .font(.title) // Sets font size for the button text
            .foregroundColor(.white) // Makes the button text white
            .background(flower.color) // Sets button background to the flower's color
            .cornerRadius(10) // Rounds the button corners
            
            Spacer() // Adds space at the bottom
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity) // Makes the container take full available space
        .padding() // Adds padding around the container
        .background(Color.white) // Sets a white background for the entire view
        .cornerRadius(15) // Rounds the corners of the view
        .shadow(radius: 10) // Adds a shadow effect to the view
        .ignoresSafeArea(.all) // Ignores safe area insets for full-screen presentation
    }
}
