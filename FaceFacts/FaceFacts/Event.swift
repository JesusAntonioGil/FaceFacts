//
//  Event.swift
//  FaceFacts
//
//  Created by Jesus Antonio Gil on 17/2/24.
//

import SwiftData


@Model
class Event {
    var name: String = ""
    var location: String = ""
    var people: [Person]? = [Person]()
    
    init(name: String, location: String) {
        self.name = name
        self.location = location
    }
}
