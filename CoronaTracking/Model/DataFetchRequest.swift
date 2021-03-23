//
//  DataFetchRequest.swift
//  CoronaTracking
//
//  Created by wenjuan wang on 19/03/2021.



import Foundation
import Alamofire
import SwiftyJSON

class DataFetchRequest: ObservableObject {
    
    @Published var allCountries: [CountryData] = []
    
    @Published var totalData: TotalData =  testTotalData
    
    let headers : HTTPHeaders = [
        "x-rapidapi-key": "10b01e3aa8msh2e92463533bd829p1edc56jsn1c44cb8fd573",
        "x-rapidapi-host": "covid-19-tracking.p.rapidapi.com"
    ]
    
    init() {
        
        getAllCountries()
        getLatestTotals()
        
    }
    
    func getLatestTotals() {
        AF.request( "https://covid-19-tracking.p.rapidapi.com/v1", headers: headers).responseJSON { response in
            // debugPrint(response)
            let result = response.data
            if result != nil {
                let json = JSON(result!)
                let totalConfirmed = json[0]["Total Cases_text"].stringValue
                let totalDeaths = json[0]["Total Deaths_text"].stringValue
                let recovered = json[0]["Total Recovered_text"].stringValue
                let newConfirmed = json[0]["New Cases_text"].stringValue
                let newDeaths = json[0]["New Deaths_text"].stringValue
                
                self.totalData = TotalData(totalConfirmed:totalConfirmed,  newConfirmed: newConfirmed, newDeaths: newDeaths,totalDeaths: totalDeaths, recovered: recovered)
            }else{
                self.totalData = testTotalData
            }
        }
    }
        func getAllCountries(){
            AF.request("https://covid-19-tracking.p.rapidapi.com/v1", headers: headers).responseJSON { response in
                let result = response.value
                var allCount : [CountryData] = []
                
                
                
                if result != nil {
                    
                    let jsonCountry = JSON(result!)
                    
                    //countryData in dataDictionary
                    for index in 0...jsonCountry.count - 1
                
                    {
                        
                        
                        let country = jsonCountry[index]["Country_text"].stringValue
                        let totalConfirmed = jsonCountry[index]["Total Cases_text"].stringValue
                        let totalDeaths = jsonCountry[index]["Total Deaths_text"].stringValue
                        let recovered = jsonCountry[index] ["Total Recovered_text"].stringValue
                        let newConfirmed = jsonCountry[index]["New Cases_text"].stringValue
                        let newDeaths = jsonCountry[index]["New Cases_text"].stringValue
                        
                        
                        
                        let countryObject = CountryData(country: country , totalConfirmed:totalConfirmed, newConfirmed:newConfirmed, totalDeaths:totalDeaths,newDeaths:newDeaths ,  recovered: recovered, isFavorite: false)
                     
                         allCount.append(countryObject)
                
                    }
                
                }
                allCount.remove(at: 0)
                self.allCountries  = allCount
            }
        }
    
    
         
    

}
