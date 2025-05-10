//
//  APIWeatherResponse.swift
//  ClimaSphere
//
//  Created by mai khaled on 04/05/2025.
//  Copyright © 2025 mai. All rights reserved.
//

import Foundation

struct APIWeatherResponse: Codable {
    let name: String
    let main: MainData
    let weather: [WeatherCondition]
}

struct MainData: Codable {
    let temp: Double
}

struct WeatherCondition: Codable {
    let id: Int
    let description: String
}
