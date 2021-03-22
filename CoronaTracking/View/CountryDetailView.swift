//
//  CountryDetailView.swift
//  CoronaTracking
//
//  Created by wenjuan wang on 20/03/2021.
//

import SwiftUI

struct CountryDetailView: View {
    
    @EnvironmentObject var favorites : Favorites
    
    var countryData: CountryData
    

    var body: some View {
        VStack{
            
            
            
            VStack{
                CountryDetailRow(number:countryData.totalConfirmed.formatInt(),name: "Total Confirmed")
                    .padding(.top)
                CountryDetailRow(number:countryData.newConfirmed.formatInt(), name: "New Confirmed", color: .yellow)
                CountryDetailRow(number:countryData.totalDeaths.formatInt(), name: "Total Deaths", color: .red)
                CountryDetailRow(number:countryData.newDeaths.formatInt(), name: "New Death", color: .purple)
                CountryDetailRow(number:countryData.recovered.formatInt(), name: "Recovered", color: .green)
           
                                 Button(favorites.contains(countryData) ? "Remove from Favorites":"Add to Favorites")
                     {
                     if self.favorites.contains(self.countryData){
                         self.favorites.remove(self.countryData)
                     }else{
                         self.favorites.add(self.countryData)
                     }
                 }
                 .padding()
              
            
            
            
            }
            
            .background(Color("CardBackgroud"))
            .cornerRadius(8)
            .padding()
            
            Spacer()
            
        }
        .padding(.top,50)
        .navigationBarTitle(countryData.country)
    }
}

struct CountryDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CountryDetailView(countryData: testCountryData)
    }
}
