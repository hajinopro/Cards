//
//  CardsApp.swift
//  Cards
//
//  Created by 하진호 on 2022/03/26.
//

import SwiftUI

@main
struct CardsApp: App {
    @StateObject var viewState = ViewState()
    
    var body: some Scene {
        WindowGroup {
            CardsView()
                .environmentObject(viewState)
        }
    }
}
