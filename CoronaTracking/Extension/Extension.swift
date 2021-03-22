//
//  Extension.swift
//  CoronaTracking
//
//  Created by wenjuan wang on 20/03/2021.
//

import Foundation



extension Int {
    
    func formatInt() -> String
    {
        
    let formatter = NumberFormatter()
        formatter.groupingSeparator = ","
        formatter.numberStyle = .decimal
        return formatter.string(from: NSNumber(value: self))!
    

    }
    
}
    
extension Int64 {
        func formatInt() -> String
        {
            
        let formatter = NumberFormatter()
            formatter.groupingSeparator = ","
            formatter.numberStyle = .decimal
            return formatter.string(from: NSNumber(value: self))!
        

        }
    
}
    
   

