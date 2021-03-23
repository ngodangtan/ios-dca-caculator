//
//  SearchResults.swift
//  ios-dca-caculator
//
//  Created by Ngo Dang tan on 23/03/2021.
//

import Foundation
struct SearchResults: Decodable {
    let item : [SearchResult]
    
    enum CodingKeys: String, CodingKey {
        case item = "bestMatches"
    }
}
struct SearchResult : Decodable {
    
    let symbol:String
    let name:String
    let currency:String
    let type:String
    
    enum CodingKeys: String, CodingKey {
        case symbol = "1. symbol"
        case name = "2. name"
        case type = "3. type"
        case currency = "8. currency"
    }
}
