//
//  Data.swift
//  Music
//
//  Created by Israrul on 3/28/20.
//  Copyright © 2020 Israrul Haque. All rights reserved.
//

import Foundation

let drinkData: [Drink] = load("drinks.json")

func load<T:Decodable>(_ filename:String, as type:T.Type = T.self) -> T {
    let data:Data
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else {
            fatalError("Couldn't find \(filename) in main Bundle.")
    }

    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't find \(filename) from main Bundle:\n\(error)")
    }

    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}

//func getItemData() -> [Drink] {
//    let path = Bundle.main.path(forResource: "drinks", ofType: "json")!
//    let url = URL(fileURLWithPath: path)
//    let data = try! Data(contentsOf: url)
//
//    do {
//            let decoder = JSONDecoder()
//        return try decoder.decode([Drink].self, from: data)
//        } catch {
//            fatalError("Couldn't parse")
//        }
//}

