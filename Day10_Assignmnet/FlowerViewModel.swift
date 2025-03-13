//
//  FlowerViewModel.swift
//  Day10_Assignmnet
//
//  Created by Taibah Valley Academy on 13/09/1446 AH.
//

import SwiftUI

class FlowerViewModel: ObservableObject {
    let flowers = [
        Flower(name: "Sunflower", image: "p1", description: "The common sunflower is a species of large annual forb of the daisy family Asteraceae.", color: .yellow,favorite: true),
        Flower(name: "Rose", image: "p2",description: "A rose is either a woody perennial flowering plant of the genus Rosa, in the family Rosaceae, or the flower it bears.", color: .red ,favorite: true),
        Flower(name: "Lily", image: "p3",description: "Lilium is a genus of herbaceous flowering plants growing from bulbs, all with large and often prominent flowers.", color: .pink,favorite: false),
        Flower(name: "Iris", image: "p4",description: "Iris is a flowering plant genus of 310 accepted species with showy flowers.", color: .purple,favorite: false),
        Flower(name: "Orchid", image: "p5",description: "Orchids are plants that belong to the family Orchidaceae, a diverse and widespread group of flowering plants with blooms that are often colourful and fragrant." , color: .pink,favorite: false)
    ]
}
