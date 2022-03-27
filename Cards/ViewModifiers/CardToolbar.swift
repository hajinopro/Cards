//
//  CardToolbar.swift
//  Cards
//
//  Created by 하진호 on 2022/03/27.
//

import SwiftUI

struct CardToolbar: ViewModifier {
    @EnvironmentObject var viewState: ViewState
    @Binding var currentModal: CardModal?
    
    func body(content: Content) -> some View {
        content
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        viewState.showAllCards.toggle()
                    }) {
                        Text("Done")
                    }
                }
                ToolbarItem(placement: .bottomBar) {
                    CardBottomToolbar(cardModal: $currentModal)
                }
            }
    }
}

struct CardToolbar_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            RoundedRectangle(cornerRadius: 30)
                .frame(width: Settings.defaultElementSize.width, height: Settings.defaultElementSize.height)
                .foregroundColor(.random())
                .modifier(CardToolbar(currentModal: .constant(.stickerPicker)))
                .environmentObject(ViewState())
        }
    }
}
