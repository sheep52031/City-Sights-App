//
//  DashedDivider.swift
//  City-Sights-App
//
//  Created by 林家任 on 2022/4/21.
//

import SwiftUI

struct DashedDivider: View {
    var body: some View {
        
        GeometryReader { geometry in
            
            Path { path in
                
                path.move(to:CGPoint.zero)
                path.addLine(to:CGPoint(x: geometry.size.width,y:0))
            }
        .stroke(style: StrokeStyle(lineWidth: 1,dash: [6]))
        .foregroundColor(.gray)
       }
        .frame(height: 1)
     }
}

