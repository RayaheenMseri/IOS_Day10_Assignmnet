//
//  Flower.swift
//  Day10_Assignmnet
//
//  Created by Taibah Valley Academy on 13/09/1446 AH.
//

import SwiftUI

struct Flower: Identifiable, Equatable {
    let id = UUID()
    let name: String
    let image: String
    let description: String
    let color: Color
    let favorite: Bool
}
