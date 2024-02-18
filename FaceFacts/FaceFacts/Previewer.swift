//
//  Previewer.swift
//  FaceFacts
//
//  Created by Jesus Antonio Gil on 17/2/24.
//

import SwiftData


@MainActor
struct Previewer {
    let container: ModelContainer
    let event: Event
    let person: Person

    init() throws {
        let config = ModelConfiguration(isStoredInMemoryOnly: true)
        container = try ModelContainer(for: Person.self, configurations: config)

        event = Event(name: "3D Game", location: "Madrid")
        person = Person(name: "Jesús Antonio", emailAddress: "jesus@aaaa.com", details: "", metAt: event)

        container.mainContext.insert(person)
    }
}
