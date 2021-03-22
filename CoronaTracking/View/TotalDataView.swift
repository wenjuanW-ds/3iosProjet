//
//  TotalDataView.swift
//  CoronaTracking
//
//  Created by wenjuan wang on 20/03/2021.
//

import SwiftUI

struct TotalDataView: View {
    
    var totalData: TotalData
    var body: some View {
        
        VStack{
            HStack{
                GlobalDataCardView(number: totalData.totalConfirmed, name: "Confirmed")
                
                
                GlobalDataCardView(number: totalData.newConfirmed, name:"New Confirmed", color: .yellow)
                
                
                GlobalDataCardView(number: totalData.newDeaths, name: "New Deaths", color: .red)
                
                
            }
                
                HStack{
                    GlobalDataCardView(
                        number: totalData.totalDeaths, name:"Total Deaths", color: .purple)
                    
                    GlobalDataCardView(
                        number: totalData.recovered, name: "Recovered", color: .green)
                    
                }
                
               
        
        }
        .frame(height: 170)
        .padding(10)
    }
}

struct TotalDataView_Previews: PreviewProvider {
    static var previews: some View {
        TotalDataView(totalData: testTotalData)
    }
}
