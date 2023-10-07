//
//  Utils.swift
//  AppPatronesMarcos
//
//  Created by Marcos on 7/10/23.
//

import Foundation

func urlStringToUrl (url: String) -> URL {
    return URL(string: url) ?? URL(string: "")!
}

func transformType(types: [String]) -> String {
    switch types.count {
        case 2:
            return "\(types[0])/\(types[1])"
        case 1:
            return "\(types[0])"
        default:
            return "-"
    }
}
