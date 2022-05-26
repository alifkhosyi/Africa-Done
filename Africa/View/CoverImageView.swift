//
//  CoverImageView.swift
//  Africa
//
//  Created by Alif Khosyi Rahmatullah on 12/01/22.
//

import SwiftUI

struct CoverImageView: View {
    // MARK : PROPERTIES
    let coverImages : [CoverImage] = Bundle.main.decode("covers.json")
    
    // MARK : BODY
    var body: some View {
        TabView{
            ForEach(coverImages) { item in
                Image(item.name)
                 .resizable()
                    .scaledToFill()
            } // MARK : LOOP
        } // MARK : TAB
        .tabViewStyle(PageTabViewStyle())
    }
}

struct CoverImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageView()
            .previewLayout(.fixed(width: 400, height: 300))
    }
}
