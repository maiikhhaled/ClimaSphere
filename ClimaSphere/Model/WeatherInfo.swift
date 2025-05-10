//
//  WeatherInfo.swift
//  ClimaSphere
//
//  Created by mai khaled on 04/05/2025.
//  Copyright © 2025 mai. All rights reserved.
//


struct WeatherInfo {
    let statusCode: Int
    let city: String
    let temperature: Double
    
    var tempText: String {
        String(format: "%.1f°C", temperature)
    }
    
    var iconName: String {
        switch statusCode {
        case 200...232: return "cloud.bolt"
        case 300...321: return "cloud.drizzle"
        case 500...531: return "cloud.rain"
        case 600...622: return "cloud.snow"
        case 701...781: return "cloud.fog"
        case 800: return "sun.max"
        case 801...804: return "cloud"
        default: return "cloud"
        }
    }
}
