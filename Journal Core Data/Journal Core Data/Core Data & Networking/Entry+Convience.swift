//
//  Entry+Convience.swift
//  Journal Core Data
//
//  Created by Austin Cole on 1/14/19.
//  Copyright © 2019 Austin Cole. All rights reserved.
//

import Foundation
import CoreData

extension Entry {
    convenience init(title: String, bodyText: String, timestamp: Date, identifier: String, mood: String, insertInto context: NSManagedObjectContext) {
        self.init(context: context)
        self.title = title
        self.bodyText = bodyText
        self.timestamp = timestamp
        self.identifier = identifier
        self.mood = mood
    }
    convenience init?(entryRepresentation: EntryRepresentation) {
        self.init()
        title = entryRepresentation.title
        bodyText = entryRepresentation.bodyText
        timestamp = entryRepresentation.timestamp
        identifier = entryRepresentation.identifier
        mood = entryRepresentation.mood
    }
}