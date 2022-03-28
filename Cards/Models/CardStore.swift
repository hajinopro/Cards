//
//  CardStore.swift
//  Cards
//
//  Created by 하진호 on 2022/03/28.
//

import SwiftUI

class CardStore: ObservableObject {
    @Published var cards: [Card] = []
    
    init(defaultData: Bool) {
        if defaultData {
            cards = initialCards
        }
    }
    
    func index(for card: Card) -> Int? {
        cards.firstIndex { $0.id == card.id }
    }
}
