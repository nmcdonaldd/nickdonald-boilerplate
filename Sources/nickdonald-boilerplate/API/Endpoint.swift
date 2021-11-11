//
//  Endpoint.swift
//  
//
//  Created by Nicholas McDonald on 11/10/21.
//

import Foundation

public struct Endpoint {
    var host: String
    var path: String = ""
    var queryItems: [URLQueryItem]?
    var scheme = "https"
}

extension Endpoint {
    var url: URL {
        var components = URLComponents()
        components.scheme = scheme
        components.host = host
        components.path = path
        components.queryItems = queryItems
        
        guard let url = components.url else {
            preconditionFailure("Invalid URL components: \(components)")
        }
        
        return url
    }
}
