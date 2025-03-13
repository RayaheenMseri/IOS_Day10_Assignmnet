//
//  FlowerCard 3.swift
//  Day10_Assignmnet
//
//  Created by Taibah Valley Academy on 13/09/1446 AH.
//


import SwiftUI

// FlowerCard displays the details of a flower in a card-style layout
struct FlowerCard: View {
    let flower: Flower // The flower object to be displayed
    var animation: Namespace.ID // Namespace for matching animations between views

    var body: some View {
        VStack {
            // Display the flower's name using custom text formatting
            customText(text: flower.name, font: .headline, color: flower.color)
                .fontWeight(.bold) // Makes the font bold
            
            // Display the flower image with specific styling (resizable, scaled, and rounded corners)
            Image(flower.image)
                .resizable() // Makes the image resizable
                .scaledToFit() // Ensures the image scales to fit the available space while maintaining its aspect ratio
                .frame(height: 200) // Sets a fixed height of 200 for the image
                .clipShape(RoundedRectangle(cornerRadius: 12)) // Clips the image with rounded corners
            
            // Display the flower's description with styling (font, color, padding, etc.)
            Text(flower.description)
                .font(.body) // Body font for the description text
                .padding(.top, 10) // Adds space above the description
                .foregroundColor(.gray) // Sets the description text color to gray
                .multilineTextAlignment(.center) // Centers the multiline text
        }
        .frame(maxWidth: .infinity) // Makes the card take up all available width
        .padding() // Adds padding around the card content
        .background(Color.white) // Sets the background color to white
        .cornerRadius(15) // Rounds the corners of the card
        .shadow(radius: 5) // Adds a subtle shadow effect around the card
        .matchedGeometryEffect(id: flower.id.uuidString, in: animation) // Matches the geometry of this card for smooth animation when transitioning to another view
    }
}
