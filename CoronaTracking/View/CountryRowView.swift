//
//  CountryRowView.swift
//  CoronaTracking
//
//  Created by wenjuan wang on 20/03/2021.
/*
 Spacer()
 Text(countryData.totalConfirmed.formatInt())
     
     .font(.subheadline)
     .frame(height:40)
     .padding(.leading,5)
 
 Spacer()
 
 Text(countryData.totalDeaths.formatInt())
     .frame( width:50,height:40,alignment: .center)          .font(.subheadline)
     .foregroundColor(.red)
     .padding(.leading,5)
 
 Spacer()
 
 Text(countryData.recovered.formatInt())
     .frame( width:50,height:40,alignment: .center)          .font(.subheadline)
     .foregroundColor(.green)
       */

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
