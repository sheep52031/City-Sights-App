//
//  BusinessSearch.swift
//  City-Sights-App
//
//  Created by 林家任 on 2022/4/12.
//

import Foundation

struct BusinessSearch: Decodable {
    
    var businesses = [Business]()
    var total = 0
    var region = Region()
}

struct Region: Decodable {
    var center = Coordinate()
}
