//
//  Model.swift
//  CoronaTracking
//
//  Created by wenjuan wang on 19/03/2021.
//

import Foundation


struct TotalData {
    
    let totalConfirmed : String
    let newConfirmed: String
    let newDeaths :String
    let totalDeaths: String
    let recovered : String
    
    
}

struct CountryData {
    
    

    let country: String
    let totalConfirmed: Int64
    let newConfirmed: Int64
    let totalDeaths: Int64
    let newDeaths : Int64
    let recovered : Int64
    var isFavorite :Bool
}

let testTotalData = TotalData(totalConfirmed: "20000",newConfirmed: "300", newDeaths:"100", totalDeaths: "700", recovered:"50")

let testCountryData = CountryData(country: "Test", totalConfirmed:500, newConfirmed: 40, totalDeaths:300, newDeaths: 50, recovered: 40, isFavorite: false)
