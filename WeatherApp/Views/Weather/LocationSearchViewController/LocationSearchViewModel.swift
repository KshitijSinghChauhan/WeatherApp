//
//  LocationSearchViewModel.swift
//  WeatherApp
//
//  Created by Kshitij Singh Chauhan on 24/09/24.
//

import Foundation
import RxRelay

class LocationSearchViewModel {
    
    var countries = BehaviorRelay<[Country]>(value: [])
    
    func getCountries(_ text: String) {
        let baseURL = "https://api.weatherapi.com/v1/search.json"
        let apiKey = "36f5ab74949b4c9394e122919242309"
        let locationQuery = "London"
        let aqi = "yes"

        var components = URLComponents(string: baseURL)!
        components.queryItems = [
            URLQueryItem(name: "key", value: apiKey),
            URLQueryItem(name: "q", value: locationQuery),
            URLQueryItem(name: "aqi", value: aqi)
        ]

        guard let url = components.url else {
            print("Invalid URL")
            return
        }

        var request = URLRequest(url: url)
        request.httpMethod = "GET"

        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            if let error = error {
                print("Error: \(error.localizedDescription)")
                return
            }

            guard let data = data else {
                print("No data received")
                return
            }

            do {
                let data = try JSONDecoder().decode([Country].self, from: data)
                print(data)
            } catch {
                print("Error parsing JSON: \(error.localizedDescription)")
            }
        }

        // Step 6: Start the task
        task.resume()
            
    }
}
