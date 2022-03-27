//
//  SingleCardView.swift
//  Cards
//
//  Created by 하진호 on 2022/03/26.
//

import SwiftUI

struct SingleCardView: View {
    @EnvironmentObject var viewState: ViewState
    
    var body: some View {
        NavigationView {
            CardDetailView()
                .navigationBarTitleDisplayMode(.inline)
        }
        .navigationViewStyle(.stack)
    }
}

struct SingleCardView_Previews: PreviewProvider {
    static var previews: some View {
        SingleCardView()
            .environmentObject(ViewState())
    }
}


