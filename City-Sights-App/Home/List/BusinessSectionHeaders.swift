//
//  BusinessSectionHeaders.swift
//  City-Sights-App
//
//  Created by 林家任 on 2022/4/12.
//

import SwiftUI

struct BusinessSectionHeaders: View {

    var title: String
    
    var body: some View {
        
        ZStack(alignment: .leading){
            
            Rectangle()
                .foregroundColor(.white)
                .frame(height: 45)
            
            Text(title).font(.headline)
            
        }
        
        
    }
}

struct BusinessSectionHeaders_Previews: PreviewProvider {
    static var previews: some View {
        BusinessSectionHeaders(title: "Restaurants")
    }
}
