//
//  CatagoryItemView.swift
//  TouchDown
//
//  Created by Narayanasamy on 12/09/23.
//

import SwiftUI

struct CatagoryItemView: View {
  // MARK: - PROPERTY
    
    let catagory: Catagory
    // MARK: BODY
    var body: some View {
        Button(action: {}, label: {
            HStack(alignment: .center,spacing: 6) {
                Image(catagory.image)
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30,height: 30,alignment: .center)
                    .foregroundColor(.gray)
                Text(catagory.name.uppercased())
                    .fontWeight(.light)
                    .foregroundColor(.gray)
                   
                
                Spacer()
            }//HSTACk
            .padding()
            .background(Color.white.cornerRadius(12))
            .background(
               RoundedRectangle(cornerRadius: 12)
                .stroke(Color.gray,lineWidth: 1)
            )
        })//BUTTON
    }
}
// MARK: PREVIEW
struct CatagoryItemView_Previews: PreviewProvider {
    static var previews: some View {
        CatagoryItemView(catagory: catagories[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
