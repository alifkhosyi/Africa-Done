//
//  InsetGalleryView.swift
//  Africa
//
//  Created by Alif Khosyi Rahmatullah on 13/01/22.
//

import SwiftUI

struct InsetGalleryView: View {
    //: MARK PROPERTY
    let animals : AnimalListItem
    
   //: MARK BODY
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            HStack (alignment: .center, spacing: 15){
                ForEach(animals.gallery, id: \.self) { item in
                    Image(item)
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(12)
                        .frame(height: 200)
                }
            }
        })
    }
}

struct InsetGalleryView_Previews: PreviewProvider {
    static let animal : [AnimalListItem] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        InsetGalleryView(animals: animal[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
