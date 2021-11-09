//
//  Models.swift
//  ParsingJSON
//
//  Created by Jesse Brior on 11/7/21.
//

import Foundation


struct Result: Codable {
    let data: [ResultItem]
}

struct ResultItem: Codable {
    let title: String
    let items: [String]
}

