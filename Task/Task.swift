//
//  Task.swift
//  Task
//
//  Created by Diego Aguirre on 2/16/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import Foundation


class Task: NSObject, NSCoding {
    
    private let nameKey = "name"
    private let notesKey = "notes"
    private let dueKey = "due"
    private let isCompleteKey = "isComplete"
    
    var name: String
    var notes: String?
    var due: NSDate?
    var isComplete: Bool
    
    init(name: String, notes: String?, due: NSDate?, isComplete: Bool) {
        
        self.name = name
        self.notes = notes
        self.due = due
        self.isComplete = false
    }
    
    required convenience init?(coder decoder: NSCoder) {
          guard let name = decoder.decodeObjectForKey("name") as? String,
                let notes = decoder.decodeObjectForKey("notes") as? String?,
                let due = decoder.decodeObjectForKey("due") as? NSDate?,
                let isComplete = decoder.decodeObjectForKey("isComplete") as? Bool
            else { return nil }
        
        self.init(name: name, notes: notes, due: due, isComplete: isComplete)
        

    }
    
    func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeObject(name, forKey: nameKey)
        aCoder.encodeObject(notes, forKey: notesKey)
        aCoder.encodeObject(due, forKey: dueKey)
        aCoder.encodeObject(isComplete, forKey: isCompleteKey)
    }
}

func ==(lhs: Task, rhs: Task) -> Bool {
    
    return (lhs.name == rhs.name) && (lhs.notes == rhs.notes)
}
































