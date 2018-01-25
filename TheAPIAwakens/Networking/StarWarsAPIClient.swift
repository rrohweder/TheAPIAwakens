//
//  StarWarsAPIClient.swift
//  TheAPIAwakens
//
//  Created by Roger Rohweder on 1/19/18.
//  Copyright © 2018 Roger Rohweder. All rights reserved.
//

import Foundation

class StarWarsAPIClient {
    let downloader = JSONDownloader()

    func fetchPeople() {
        
        /*
        let endpoint = StarWarsApi.search()
        
        performRequest(with: endpoint) { results, error in
            guard let results = results else {
                completion([], error)
                return
            }
            let people = results.flatMap { People(json: $0) }
            completion(people, nil)
        }
 */

    }
    
    func fetchVehicles() {
        
    }
    
    func fetchStarships() {
        
    }
    
    
    typealias Results = [[String:Any]]
    
    private func performRequest(with endpoint: Endpoint, completion: @escaping (Results?, StarWarsError?) -> Void) {
        
        let task = downloader.jsonTask(with: endpoint.request) { json, error in
            DispatchQueue.main.async {
                guard let json = json else {
                    completion(nil, error)
                    return
                }
                guard let results = json["results"] as? [[String:Any]] else {
                    completion(nil, .jsonParsingFailure(message: "JSON data does not contain results"))
                    return
                }
                completion(results, nil)
            }
        }
        task.resume()
    }

    
}
