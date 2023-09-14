//
//  CatagoryGridView.swift
//  TouchDown
//
//  Created by Narayanasamy on 12/09/23.
//

import SwiftUI

struct CatagoryGridView: View {
    
    // MARK: PROPERTIES
    
    
    // MARK: - BODY
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false,content: {
            LazyHGrid(rows: gridLayout,alignment: .center,spacing: columnSpacing,pinnedViews: [],content: {
                Section(
                    header: SectionView(rotateClockwise: false),
                    footer: SectionView(rotateClockwise: true)
                ) {
                    ForEach(catagories) { category in
                        CatagoryItemView(catagory: category)
                    }
                }
            })//GRID
            .frame(height: 140)
            .padding(.horizontal,15)
            .padding(.vertical,10)
        })//SCROLL
        
    }
}

// MARK: - PREVIEW

struct CatagoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CatagoryGridView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
