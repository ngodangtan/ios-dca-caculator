//
//  APIService.swift
//  ios-dca-caculator
//
//  Created by Ngo Dang tan on 23/03/2021.
//

import Foundation
import Combine

struct APIService {

    var API_KEY: String {
        return keys.randomElement() ?? ""
    }
    
    let keys = ["CEVFZ52FJZ7H3NNR","E617UOE5Z84ORTNB","2CRQ3A7V195DY0WG"]
    
    func fetchSymbolsPublisher(keywords: String) -> AnyPublisher<SearchResults, Error>{
        let urlString = "https://www.alphavantage.co/query?function=SYMBOL_SEARCH&keywords=\(keywords)&apikey=\(API_KEY)"
        
        let url = URL(string: urlString)!
        return URLSession.shared.dataTaskPublisher(for: url)
            .map({ $0.data })
            .decode(type: SearchResults.self, decoder: JSONDecoder())
            .receive(on: RunLoop.main)
            .eraseToAnyPublisher()
    }
    
    
    
}
