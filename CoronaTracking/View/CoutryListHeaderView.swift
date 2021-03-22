//
//  CoutryListHeaderView.swift
//  CoronaTracking
//
//  Created by wenjuan wang on 20/03/2021.
/*
 
 
 Spacer()
 Text("NewConf.")
     .fontWeight(.bold)
     .font(.subheadline)
     .frame(height:40)
     .padding(.leading,5)
 
 Spacer()
 
 Text("NewDeaths")
     .fontWeight(.bold)
     .font(.subheadline)
     .frame(height:40)
     .padding(.leading,5)
 
 Spacer()
 
 Text("Recover")
     .fontWeight(.bold)
     .font(.subheadline)
     .frame(height:40)
     .padding(.leading,5)
         }
    
 */




import SwiftUI

struct CoutryListHeaderView: View {
    var body: some View {
       
        HStack{
            Text("Covid19 Country Status")
                
                .fontWeight(.bold)
                .font(.subheadline)
                .frame(width: 210, alignment: .leading)
                .padding(.leading,15)
            
        
        
        
    }
}
}

struct CoutryListHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        CoutryListHeaderView()
    }
}
