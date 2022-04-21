//
//  YelpAttribution.swift
//  City-Sights-App
//
//  Created by 林家任 on 2022/4/21.
//

import SwiftUI

struct YelpAttribution: View {
    
    var link : String
    
    var body: some View {
        
        Link(destination: URL(string: link)!) {
            Image("yelp")
                .resizable()
                .scaledToFit()
                .frame(height:36)
        } 
    }
}

struct YelpAttribution_Previews: PreviewProvider {
    static var previews: some View {
        YelpAttribution(link: "https://www.yelp.com/")
    }
}
