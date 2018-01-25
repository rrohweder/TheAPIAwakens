//
//  StarWarsError.swift
//  TheAPIAwakens
//
//  Created by Roger Rohweder on 1/19/18.
//  Copyright © 2018 Roger Rohweder. All rights reserved.
//

import Foundation


enum StarWarsError: Error {
    case requestFailed
    case responseUnsuccessful
    case invalidData
    case jsonConversionFailure
    case jsonParsingFailure(message: String)
}
