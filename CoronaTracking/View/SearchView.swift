//
//  SearchView.swift
//  CoronaTracking
//
//  Created by wenjuan wang on 20/03/2021.
//

import SwiftUI

struct SearchView: View {
    @Binding var searchText : String
    var body: some View {
        HStack{
            TextField("Country...", text : $searchText)
            
                .padding()
        }
        .frame(height: 50)
        .background(Color("CardBackgroud"))
        
  }
}


