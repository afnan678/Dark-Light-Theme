//
//  HomeViewModel.swift
//  DarkLightMode
//
//  Created by Afnan Ahmed on 31/07/2024.
//

import Foundation

protocol HomeViewModelInput {
    
}

protocol HomeViewModel: HomeViewModelInput, ObservableObject {
    var search: String {get set}
    var items: [Item] {get set}
}

class HomeViewModelImpl: HomeViewModel {
    @Published var search: String = ""
    @Published var items: [Item] = [
        Item(imageName: "image1", title: "Card text 1", description: "Nulla vitae elit libero, a pharetra augue."),
        Item(imageName: "Image2", title: "Card text 2", description: "Nulla vitae elit libero, a pharetra augue."),
        Item(imageName: "Image3", title: "Card text 3", description: "Mauris condimentum nibh, ut fermentum massa justo sit amet risus."),
        Item(imageName: "Image4", title: "Card text 4", description: "Mauris condimentum nibh, ut fermentum massa justo sit amet risus.")

    ]
}
