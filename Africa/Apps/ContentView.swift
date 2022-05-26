//
//  ContentView.swift
//  Africa
//
//  Created by Alif Khosyi Rahmatullah on 12/01/22.
//

import SwiftUI

struct ContentView: View {
   //: MARK PROPERTY
    let animalListItems : [AnimalListItem] = Bundle.main.decode("animals.json")
    
    //: MARK BODY
    var body: some View {
        NavigationView{
            List{
            CoverImageView()
                .frame(height: 300)
                .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                
                ForEach(animalListItems) { item in
                    NavigationLink(
                        destination: AnimalDetailView(animal: item),
                        label: {
                            AnimalListItemView(animalListItem: item)
                        })
                }
            } //: LIST
            .navigationBarTitle("AFRICA", displayMode: .large )
        } //: NAVIGATION
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
