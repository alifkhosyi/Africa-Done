//
//  AnimalListItemView.swift
//  Africa
//
//  Created by Alif Khosyi Rahmatullah on 12/01/22.
//

import SwiftUI

struct AnimalListItemView: View {
    //: MARK PROPERTY
    let animalListItem : AnimalListItem
    
    //: MARK BODY
    var body: some View {
        HStack {
            Image(animalListItem.image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 90, height: 90)
                .clipShape(RoundedRectangle(cornerRadius: 12))
            VStack (alignment: .leading, spacing: 8){
                Text(animalListItem.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                Text(animalListItem.headline)
                    .lineLimit(2)
                    .font(.footnote)
                    .padding(.trailing)
            } //: VSTACK
        }
    }
}

struct AnimalListItemView_Previews: PreviewProvider {
    static let animals : [AnimalListItem] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        AnimalListItemView(animalListItem: animals[1])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
