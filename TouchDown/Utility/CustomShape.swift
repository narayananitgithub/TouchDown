//
//  CustomShape.swift
//  TouchDown
//
//  Created by Narayanasamy on 13/09/23.
//

import SwiftUI

struct CustomShape: Shape {
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft,.topRight],cornerRadii: CGSize(width: 35, height: 35))
        return Path(path.cgPath)
    }
    
    
    // MARK: PROPERTIES
    
    
    
    // MARK: BODY
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct CustomShape_Previews: PreviewProvider {
    static var previews: some View {
        CustomShape()
            .previewLayout(.fixed(width: 428, height: 120))
            .padding()
        
    }
}
