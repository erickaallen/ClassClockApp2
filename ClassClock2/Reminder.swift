//
//  Reminder.swift
//  ClassClock2
//
//  Created by Ericka Allen on 7/19/17.
//  Copyright © 2017 Ericka Allen. All rights reserved.
//

import UIKit

class Reminder {
    
    // MARK: Properties
    
    var dateAndTime: Date
    var title: String
    var notes: String
    
    // Initialization to fail if no title given
    
    //MARK: Initialization
    
    init?(dateAndTime: Date, title: String, notes: String) {
        if title.isEmpty {
            return nil
        }
    
    self.dateAndTime = dateAndTime
    self.title = title
    self.notes = notes
    }
    
}


























