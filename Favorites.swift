//
//  Favorites.swift
//  CoronaTracking
//
//  Created by wenjuan wang on 21/03/2021.
//

import Foundation


class Favorites: ObservableObject {
    
    
    @Published var counts : Set<String>
    @Published  var saveKey = "Favorites"
    
    
    init() {
        self.counts = []
    }
    
    
    func contains(_ count: CountryData) -> Bool{
        
        counts.contains(count.country)
    }
    
    
    func add(_ count: CountryData) {
        
        
        objectWillChange.send()
        counts.insert(count.country)
        save()
        
        
    }
    
    
    func remove(_ count: CountryData) {
        
        
        objectWillChange.send()
        counts.remove(count.country)
        save()
        
        
    }
    
    func save() {
        
    }
}
