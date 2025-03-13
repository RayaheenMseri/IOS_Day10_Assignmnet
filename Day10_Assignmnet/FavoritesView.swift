//
//  Untitled.swift
//  Day10_Assignmnet
//
//  Created by Taibah Valley Academy on 13/09/1446 AH.
//

import SwiftUI

struct FavoritesView: View {
    @Namespace private var animation
    @State var selectedFlower: Flower?
    @ObservedObject private var viewModel : FlowerViewModel =  FlowerViewModel()
     // show faviorate flower
    var body: some View {
        NavigationView {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(viewModel.flowers) { flower in
                        if flower.favorite == true{
                            FlowerCard(flower: flower, animation: animation)
                        }
                    }
                }.frame(maxWidth: 900 , maxHeight: 500)
                    .padding()
            }
            .navigationTitle("User Profiles")
        }
    }
}
