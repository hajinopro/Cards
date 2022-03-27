//
//  ToolbarButtonView.swift
//  Cards
//
//  Created by 하진호 on 2022/03/26.
//

import SwiftUI

struct ToolbarButtonView: View {
    let modal: CardModal
    private let modalButton: [CardModal: (text: String, image: String)] = [
        .photoPicker: ("Photos", "photo"),
        .framePicker: ("Frames", "square.on.circle"),
        .stickerPicker: ("Stickers", "heart.circle"),
        .textPicker: ("Text", "textformat")
    ]
    
    var body: some View {
        if let text = modalButton[modal]?.text,
           let image = modalButton[modal]?.image {
            VStack {
                Image(systemName: image)
                    .font(.largeTitle)
                Text(text)
            }
            .padding(.top)
        }
    }
}

struct ToolbarButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ToolbarButtonView(modal: .stickerPicker)
            .previewLayout(.sizeThatFits)
    }
}
