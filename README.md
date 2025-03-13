# SwiftUI Screen with Custom UI Components, Adaptive Layouts, and Animations

## Task Overview
This project demonstrates how to create a SwiftUI screen with custom UI components, adaptive layouts for different screen sizes, and smooth animations using `@ViewBuilder` and `.matchedGeometryEffect()` for seamless transitions. The goal is to create a responsive and interactive UI that adapts to varying screen sizes and orientations.

## Features
- **Custom UI Components**: Reusable SwiftUI views created with `@ViewBuilder` for modular UI design.
- **Adaptive & Responsive Layouts**: Layouts using `GeometryReader` to dynamically adjust the UI based on device size and orientation.
- **Advanced Animations & Effects**: Seamless animations with `.matchedGeometryEffect()` for smooth transitions and animated interactions with gestures.

## Task Requirements
### 1. Custom UI Components
- **Reusable Views**: The project defines reusable components for flowers, such as `FlowerCard`, `FlowerDetailView`, and custom text elements.
- **@ViewBuilder**: Custom UI components are built using `@ViewBuilder`, allowing modular and easy-to-combine UI elements.

### 2. Adaptive & Responsive Layouts
- **GeometryReader**: Used to dynamically calculate the available screen size and adjust the layout accordingly. This ensures that the UI remains flexible across different screen sizes and orientations.
- **Responsive Grids**: A `LazyVGrid` with adaptive column sizes ensures that the grid of flowers adapts to the screen width, making the layout responsive to various screen sizes.

### 3. Advanced Animations & Effects
- **Matched Geometry Effect**: Using `.matchedGeometryEffect()`, flower cards and detail views share a matching animation when transitioning between the list view and detailed view.
- **Smooth Transitions**: Animations like `.spring()` are applied to gestures such as tapping to reveal flower details, ensuring fluid visual feedback during interactions.
- **Interactive UI**: Users can interact with flower cards, which trigger smooth animations and transitions when selecting flowers for detail views.

## How It Works
1. **FlowerHomePage**: The main screen displays a grid of flower cards using a responsive grid layout (`LazyVGrid`). When a user taps a card, the `selectedFlower` state is updated, and the detail view for that flower appears with a smooth transition animation.
2. **FlowerCard**: This is a reusable component that represents each flower in the grid, displaying its name, image, and description. Each card is wrapped in a `matchedGeometryEffect` to ensure smooth transitions between the list and detail views.
3. **FlowerDetailView**: Displays the detailed information about a selected flower. It uses the `matchedGeometryEffect` to transition smoothly from the selected flower card to the detail view.


## Code Structure

- **FlowerHomePage.swift**: The main view displaying the list of flowers and handling the navigation to the detail view.
- **FlowerCard.swift**: A reusable component representing each flower in the list with a customizable layout.
- **FlowerDetailView.swift**: A detailed view that shows more information about the selected flower.
- **FlowerViewModel.swift**: A ViewModel that provides data for the list of flowers, simulating a model from an API or database.
- **Flower.swift**: A model that represents a flower's properties, including its name, description, image, and color.

## Libraries Used
- **SwiftUI**: Core framework for building the user interface.
- **UIKit** (optional for additional integration with SwiftUI): Might be used for more complex transitions or controls not directly available in SwiftUI.


