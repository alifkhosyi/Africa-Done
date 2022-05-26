//
//  InsetFactView.swift
//  Africa
//
//  Created by Alif Khosyi Rahmatullah on 13/01/22.
//

import SwiftUI

struct InsetFactView: View {
    let animal : AnimalListItem
    
    var body: some View {
        GroupBox{
            TabView{
            ForEach(animal.fact, id: \.self) { item in
                Text(item)
            }
            }
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight : 148, idealHeight: 168, maxHeight: 180)
        }.padding()
    }
}

struct InsetFactView_Previews: PreviewProvider {
    static let animals : [AnimalListItem] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        InsetFactView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
