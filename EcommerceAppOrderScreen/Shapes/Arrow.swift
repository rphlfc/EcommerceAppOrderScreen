//
//  Arrow.swift
//  EcommerceAppOrderScreen
//
//  Created by Raphael Cerqueira on 29/08/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct Arrow: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: rect.minX, y: rect.midY))
        path.addQuadCurve(to: CGPoint(x: rect.maxX * 0.45, y: rect.midY * 0.70), control: CGPoint(x: rect.midX, y: rect.midY))
        
        path.move(to: CGPoint(x: rect.minX, y: rect.midY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.midY))
        
        path.move(to: CGPoint(x: rect.minX, y: rect.midY))
        path.addQuadCurve(to: CGPoint(x: rect.maxX * 0.45, y: rect.maxY * 0.65), control: CGPoint(x: rect.midX, y: rect.midY))
        
        return path
    }
}

struct Arrow_Previews: PreviewProvider {
    static var previews: some View {
        Arrow()
            .stroke(lineWidth: 2)
            .frame(width: 60, height: 120)
        
    }
}
