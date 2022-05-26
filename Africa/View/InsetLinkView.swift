//
//  InsetLinkView.swift
//  Africa
//
//  Created by Alif Khosyi Rahmatullah on 13/01/22.
//

import SwiftUI

struct InsetLinkView: View {
    let animal : AnimalListItem
    
    var body: some View {
        GroupBox{
            HStack{
                Image(systemName: "globe")
                Text("Wikipedia")
                Spacer()
                
                Group{
                    Image(systemName: "arrow.up.right.square")
                    Link(animal.name, destination: URL(string: animal.link)!)
                }
            }
        }
    }
}

struct InsetLinkView_Previews: PreviewProvider {
    static let animals : [AnimalListItem] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        InsetLinkView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
