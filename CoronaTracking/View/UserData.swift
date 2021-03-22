//
//  UserData.swift
//  CoronaTracking
//
//  Created by wenjuan wang on 22/03/2021.
//

import SwiftUI
import Combine

final class UserData : ObservableObject {
    
    
    
    @Published var showFavoritesOnly = false
    
    @Published var userData = DataFetchRequest()
    
}
