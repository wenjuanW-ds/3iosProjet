//
//  CountryRowView.swift
//  CoronaTracking
//
//  Created by wenjuan wang on 20/03/2021.


import SwiftUI

struct CountryRowView: View {
   
    var countryData: CountryData
    @ObservedObject var favorites = Favorites()
    var body: some View {
        
        HStack{
            Text(countryData.country)
                .fontWeight(.medium)
                .font(.subheadline)
                .lineLimit(2)
                .frame(width: 110, alignment: .leading)
            //.padding(.leading,15)
            
           
        }
        
      
        
        
    }
}

struct CountryRowView_Previews: PreviewProvider {
    static var previews: some View {
        CountryRowView(countryData: testCountryData)
    }
}
