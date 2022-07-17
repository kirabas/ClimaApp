//
//  WeatherModel.swift
//  ClimaApp
//
//  Created by Proshka Kirill on 17.07.2022.
//

import Foundation

struct WeatherModel {
    let conditionId: Int
    let cityName: String
    let temperature: Double
    
    var temperatureString: String {
        return String(format: "%.1f", temperature)
        
    }
    
    var conditionName: String {
        
        switch conditionId {
        case 200...232:
            return "cloud.bolt"
        case 300...321:
            return "cloud.drizzle"
        case 500...531:
            return "cloud.rain"
        case 801...804:
            return "cloud.sun"
        case 800:
            return "sun.max"
        case 701...781:
            return "smoke"
        default:
            return "cloud"
            
        }
        
    }
    
}

