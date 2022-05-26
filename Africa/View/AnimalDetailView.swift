//
//  AnimalDetailView.swift
//  Africa
//
//  Created by Alif Khosyi Rahmatullah on 13/01/22.
//

import SwiftUI

struct AnimalDetailView: View {
    //: MARK PROPERTY
    let animal : AnimalListItem
    
    //: MARK BODY
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            //: HERO IMAGE
            Image(animal.image)
                .resizable()
                .scaledToFit()
            
            //: TITLE
            Text(animal.name)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .multilineTextAlignment(.center)
                .padding()
                .foregroundColor(.primary)
                .background(Color
                                .accentColor
                                .frame(height: 6)
                                .offset(y: 24))
            
            //: HEADLINE
            Text(animal.headline)
                .foregroundColor(.accentColor)
                .multilineTextAlignment(.leading)
                .font(.headline)
                .padding(.horizontal)
            
            //: GALLERY
            Group{
                HeadingView(imageIcon: "photo.on.rectangle.angled", imageDescription: "Wilderness in pictures")
                
                InsetGalleryView(animals: animal)
            }
            
            //: FACTS
            Group{
                HeadingView(imageIcon: "questionmark.circle", imageDescription: "Did you know?")
                
                InsetFactView(animal: animal)
            }
            
            //: DESCRIPTION
            Group{
                HeadingView(imageIcon: "info.circle", imageDescription: "All about \(animal.name)")
                
            Text(animal.description)
                .foregroundColor(.primary)
                .multilineTextAlignment(.leading)
                .padding(.horizontal)
            }
            
            //: MAP
            Group{
                HeadingView(imageIcon: "map", imageDescription: "National park")
                
                InsetMapView()
            }
            
            //: LINK
            Group{
                HeadingView(imageIcon: "books.vertical", imageDescription: "Learn more")
                
                InsetLinkView(animal: animal)
            }
            
        } //: NAVIGATION
        .navigationBarTitle("Learn About \(animal.name)", displayMode: .inline)
    }
}

struct AnimalDetailView_Previews: PreviewProvider {
    static let animals : [AnimalListItem] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        NavigationView{
        AnimalDetailView(animal: animals[0])
        }
    }
}
