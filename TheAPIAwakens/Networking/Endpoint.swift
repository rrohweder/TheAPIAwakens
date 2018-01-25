//
//  Endpoint.swift
//  TheAPIAwakens
//
//  Created by Roger Rohweder on 1/19/18.
//  Copyright © 2018 Roger Rohweder. All rights reserved.
//

import Foundation

protocol Endpoint {
    var base: String { get }
    var path: String { get }
    var queryItems: [URLQueryItem] { get }
}

extension Endpoint {
    var urlComponents: URLComponents {
        var components = URLComponents(string: base)
        components?.path = path
        components?.queryItems = queryItems
        
        return components!
    }
    var request: URLRequest {
        let url = urlComponents.url!
        return URLRequest(url: url)
    }
}

enum StarWars {
    case people()
    case vehicles()
    case starships()
}

// FIXME: what should the search() parameters be?
/*

extension StarWars: Endpoint {
    var base: String {
        return "https://swapi.co/api"
    }
    var path: String {
        switch self {
        case .people: return "/people"
        case .vehicles: return "/vehicles"
        case .starships: return "/starships"

        }
    }
    var queryItems: [URLQueryItem] {
        switch self {
        case .search(let term, let media):
            var result = [URLQueryItem]()
            let searchTermItem = URLQueryItem(name: "term", value: term)
            result.append(searchTermItem)
            
            if let media = media {
                let mediaItem = URLQueryItem(name: "media", value: media.description)
                result.append(mediaItem)
                
                if let entityQueryItem = media.entityQueryItem {
                    result.append(entityQueryItem)
                }
                
                if let attributeQueryItem = media.attributeQueryItem {
                    result.append(attributeQueryItem)
                }
            }
            return result
        case .lookup(let id, let entity):
            return [
                URLQueryItem(name: "id", value: id.description),
                URLQueryItem(name: "entity", value: entity?.entityName)
            ]
        }
    }
}
 */

