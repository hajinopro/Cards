//
//  ViewState.swift
//  Cards
//
//  Created by 하진호 on 2022/03/26.
//

import SwiftUI

class ViewState: ObservableObject {
    @Published var showAllCards = true {
        didSet {
            if showAllCards {
                selectedCard = nil
            }
        }
    }
    
    var selectedCard: Card?
    
    convenience init(card: Card) {
        self.init()
        showAllCards = false
        selectedCard = card
    }
}
