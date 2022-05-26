//
//  HeadingView.swift
//  Africa
//
//  Created by Alif Khosyi Rahmatullah on 13/01/22.
//

import SwiftUI

struct HeadingView: View {
    //: PROPERTY
    var imageIcon : String
    var imageDescription : String
        
    //: BODY
    var body: some View {
        HStack{
            Image(systemName: imageIcon)
                .foregroundColor(.accentColor)
                .font(.largeTitle)
            Text(imageDescription)
                .font(.title3)
                .fontWeight(.bold)
        }.padding(.vertical)
    }
}

struct HeadingView_Previews: PreviewProvider {
    static var previews: some View {
        HeadingView(imageIcon: "photo.on.rectangle.angled", imageDescription: "Wilderness in pictures")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
