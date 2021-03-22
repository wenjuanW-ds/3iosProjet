//
//  ContentView.swift
//  CoronaTracking
//
//  Created by wenjuan wang on 19/03/2021.



//FavorisView().tabItem{Tab(imageName: "star.circle.fill", text: "Favoris")}

import SwiftUI
import CoreData

struct ContentView: View {
    
   

    var body: some View {
       
        TabView {
            RecentView()
                .tabItem{
                    Tab(imageName: "waveform.path.ecg.rectangle", text:"information")
                }
            
                .tag(0)
            
            
            
            
        }
    }
   
}


private struct Tab: View {
    
    let imageName : String
    
    let text : String
    var body: some View {
        VStack{
            Image(systemName: imageName)
            Text(text)
        }
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
