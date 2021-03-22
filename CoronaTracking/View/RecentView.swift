//
//  RecentView.swift
//  CoronaTracking
//
//  Created by wenjuan wang on 20/03/2021.
//



import SwiftUI

struct RecentView: View {
    
    @ObservedObject var covidData = DataFetchRequest()
    @ObservedObject var favorites = Favorites()
    @State var searchText = ""
    @State var isSeachVisble = false
    
    
    @State var showFavoritesOnly = false
    
    var body: some View {
        
        
        NavigationView{
            VStack {
                
                Spacer()
                
                TotalDataView(totalData: covidData.totalData )
                Spacer()
                CoutryListHeaderView()
                
                List {
                    
                    Toggle(isOn: $showFavoritesOnly){
                        Text("Favorites Only")
                    }
                    
                    
                    ForEach(covidData.allCountries.filter {
                        self.searchText.isEmpty ? true : $0.country.lowercased().contains(self.searchText.lowercased())
                    }, id:\.country) {countryData in
                        
                         
                        if !self.showFavoritesOnly || favorites.contains(countryData) {
                             
                            
                            NavigationLink(destination:CountryDetailView(countryData: countryData))
                            {
                                CountryRowView(countryData: countryData)
                                
                                
                                
                                if self.favorites.contains(countryData) {
                                    Spacer()
                                    Image(systemName: "heart.fill")
                                        .accessibility(label: Text( "This is a favorite"))
                                        .foregroundColor(.red)
                                    
                                }                        }
                            
                         }
                        
                        
                 
                    }
                    
                                    }
            
            }
            
            .navigationBarTitle("Covid19 Global Status", displayMode: .inline)
             .navigationBarItems(trailing:
                                    Button(action:{
                                        
                                        self.isSeachVisble.toggle()
                                        if !self.isSeachVisble{
                                            self.searchText = ""
                                        }
                                        
                                    }, label: {
                                        Image(systemName:"magnifyinglass")
                                    }))
            
        }
        
        
        .environmentObject(favorites)
        
    }
}

struct RecentView_Previews: PreviewProvider {
    static var previews: some View {
        RecentView()
            .environmentObject(DataFetchRequest())
    }
}
