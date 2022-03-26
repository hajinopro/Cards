//
//  Operators.swift
//  Cards
//
//  Created by 하진호 on 2022/03/26.
//

import SwiftUI

func + (left: CGSize, right: CGSize) -> CGSize {
    CGSize(width: left.width + right.width, height: left.height + right.height)
}
