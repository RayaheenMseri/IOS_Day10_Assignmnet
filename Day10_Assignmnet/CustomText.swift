//
//  CustomText.swift
//  Day10_Assignmnet
//
//  Created by Taibah Valley Academy on 13/09/1446 AH.
//

import SwiftUI

@ViewBuilder
func customText(text: String, font: Font, color: Color) -> some View {
    
    Text(text)
        .font(font)
        .foregroundColor(color)
}

