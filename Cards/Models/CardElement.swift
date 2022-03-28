//
//  CardElement.swift
//  Cards
//
//  Created by 하진호 on 2022/03/28.
//

import SwiftUI

protocol CardElement {
    var id: UUID { get }
    var transform: Transform { get set }
}

struct ImageElement: CardElement {
    let id = UUID()
    var transform = Transform()
    var image: Image
}

struct TextElement: CardElement {
    let id = UUID()
    var transform = Transform()
    var text = ""
    var textColor = Color.black
    var textFont = "San Fransisco"
}

extension CardElement {
    func index(in array: [CardElement]) -> Int? {
        array.firstIndex { $0.id == id }
    }
}
