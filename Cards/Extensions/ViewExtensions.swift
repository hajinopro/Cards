//
//  Extensions.swift
//  Cards
//
//  Created by 하진호 on 2022/03/26.
//

import SwiftUI

extension View {
    func resizableView() -> some View {
        self
            .modifier(ResizableView())
    }
}
