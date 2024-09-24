//
//  Country.swift
//  WeatherApp
//
//  Created by Kshitij Singh Chauhan on 24/09/24.
//

import Foundation

struct Country: Codable {
    var id: Int?
    var name: String?
    var region: String?
    var country: String?
    var url: String?
    
    init(id: Int? = nil, name: String? = nil, region: String? = nil, country: String? = nil, url: String? = nil) {
        self.id = id
        self.name = name
        self.region = region
        self.country = country
        self.url = url
    }

    func getCountryName() -> String {
        (name ?? "") + ", " + (region ?? "") + ", " + (country ?? "")
    }
}
