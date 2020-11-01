//
//  Favorites.swift
//  GenE
//
//  Created by chris richardson on 10/30/20.
//

//import SwiftUI
//
//class Favorites: ObservableObject {
//    // the actual resorts the user has favorited
//    private var sequence: Set<String>
//
//    // the key we're using to read/write in UserDefaults
//    private let saveKey = "Favorites"
//
//    init() {
//        // load our saved data
//
//        // still here? Use an empty array
//        self.sequence = []
//    }
//
//    // returns true if our set contains this resort
//    func contains(_ sequence: Sequence) -> Bool {
//        sequences.contains(sequence.id)
//    }
//
//    // adds the resort to our set, updates all views, and saves the change
//    func add(_ sequence: Sequence) {
//        objectWillChange.send()
//        sequences.insert(sequence.id)
//        save()
//    }
//
//    // removes the resort from our set, updates all views, and saves the change
//    func remove(_ sequence: Sequence) {
//        objectWillChange.send()
//        sequences.remove(sequence.id)
//        save()
//    }
//
//    func save() {
//        // write out our data
//    }
//}
