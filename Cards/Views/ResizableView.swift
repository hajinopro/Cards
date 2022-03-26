//
//  ResizableView.swift
//  Cards
//
//  Created by 하진호 on 2022/03/26.
//

import SwiftUI

struct ResizableView: View {
    @State private var transform = Transform()
    @State private var previousOffset: CGSize = .zero
    @State private var previousRotation: Angle = .zero
    private let content = RoundedRectangle(cornerRadius: 30)
    private let color = Color.red
    
    var body: some View {
        let dragGesture = DragGesture()
            .onChanged { value in
                transform.offset = value.translation + previousOffset
            }
            .onEnded { _ in
                previousOffset = transform.offset
            }
        
        let rotationGesture = RotationGesture()
            .onChanged { rotation in
                transform.rotation += rotation - previousRotation
                previousRotation = rotation
            }
            .onEnded { _ in
                previousRotation = .zero
            }
        
        content
            .frame(width: transform.size.width, height: transform.size.height)
            .foregroundColor(color)
            .rotationEffect(transform.rotation)
            .offset(transform.offset)
            .gesture(dragGesture)
            .gesture(rotationGesture)
    }
}

struct ResizableView_Previews: PreviewProvider {
    static var previews: some View {
        ResizableView()
    }
}
