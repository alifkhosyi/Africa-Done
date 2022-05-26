//
//  AnimalListItemModel.swift
//  Africa
//
//  Created by Alif Khosyi Rahmatullah on 12/01/22.
//

import SwiftUI

struct AnimalListItem : Codable, Identifiable {
    let id : String
    let name : String
    let headline : String
    let description : String
    let link : String
    let image : String
    let gallery : [String]
    let fact : [String]
}
