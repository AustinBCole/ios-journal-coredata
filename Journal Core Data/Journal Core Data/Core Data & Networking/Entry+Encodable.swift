//
//  Entry+Encodable.swift
//  Journal Core Data
//
//  Created by Austin Cole on 1/16/19.
//  Copyright © 2019 Austin Cole. All rights reserved.
//

import Foundation

extension Entry: Encodable {
    enum CodingKeys: String, CodingKey {
        
        case title
        case bodyText
        case timestamp
        case identifier
        case mood
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        do {
        try container.encode(bodyText, forKey: .bodyText)
        try container.encode(title, forKey: .title)
        try container.encode(timestamp, forKey: .timestamp)
        try container.encode(identifier, forKey: .identifier)
        try container.encode(mood, forKey: .mood)
        } catch {
            print("could not encode keys")
        }
    }
}