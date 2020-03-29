//
//  Drink.swift
//  Music
//
//  Created by Israrul on 3/28/20.
//  Copyright © 2020 Israrul Haque. All rights reserved.
//

import SwiftUI

struct Drink: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var imageName: String
    var category: Category
    var description: String
    
    enum Category: String, CaseIterable, Hashable, Codable {
        case hot = "hot"
        case cold = "cold"
    }
}
