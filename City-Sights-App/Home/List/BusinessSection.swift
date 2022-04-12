//
//  BusinessSection.swift
//  City-Sights-App
//
//  Created by 林家任 on 2022/4/12.
//

import SwiftUI

struct BusinessSection: View {
    
    var title: String
    var businesses: [Business]
    
    var body: some View {
        
        
        Section(header: BusinessSectionHeaders(title:title)){
            
            ForEach(businesses){ business in
                
                Text(business.name ?? "")
                
                Divider()
            }
    }
        
  }
}
