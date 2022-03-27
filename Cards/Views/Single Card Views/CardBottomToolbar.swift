//
//  CardBottomToolbar.swift
//  Cards
//
//  Created by 하진호 on 2022/03/26.
//

import SwiftUI

struct CardBottomToolbar: View {
    @Binding var cardModal: CardModal?
    
    var body: some View {
        HStack {
            Button(action: { cardModal = .photoPicker }) {
                ToolbarButtonView(modal: .photoPicker)
            }
            Button(action: { cardModal = .framePicker }) {
                ToolbarButtonView(modal: .framePicker)
            }
            Button(action: { cardModal = .stickerPicker }) {
                ToolbarButtonView(modal: .stickerPicker)
            }
            Button(action: { cardModal = .textPicker }) {
                ToolbarButtonView(modal: .textPicker)
            }
        }
    }
}

struct CardBottomToolbar_Previews: PreviewProvider {
    static var previews: some View {
        CardBottomToolbar(cardModal: .constant(.stickerPicker))
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
