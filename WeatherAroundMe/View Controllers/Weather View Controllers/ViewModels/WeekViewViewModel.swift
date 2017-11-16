//
//  WeekViewViewModel.swift
//  WeatherAroundMe
//
//  Created by My MacBook on 11/16/17.
//  Copyright © 2017 Stanislav Redreiev. All rights reserved.
//

import UIKit

struct WeekViewViewModel {
 
    let weatherData: [WeatherDayData]
    private let dateFormatter = DateFormatter()
    
    var numberOfSections: Int {
        return 1
    }
    
    var numberOfDays: Int {
        return weatherData.count
    }
    
    /** Day name for a specific day index. */
    func day(for index: Int) -> String {
        
        let weatherDayData = weatherData[index]
        dateFormatter.dateFormat = "EEEE"
        
        return dateFormatter.string(from: weatherDayData.time)
    }
    
    /** Date for a specific day index. */
    func date(for index: Int) -> String {
        
        let weatherDayData = weatherData[index]
        dateFormatter.dateFormat = "MMMM d"
        
        return dateFormatter.string(from: weatherDayData.time)
    }
    
    /** Temperature range for a specific day index. */
    func temperature(for index: Int) -> String {
        
        let weatherDayDate = weatherData[index]
        let minTemperature = format(temperature: weatherDayDate.temperatureMin)
        let maxTemperature = format(temperature: weatherDayDate.temperatureMax)
        
        return "\(minTemperature) - \(maxTemperature)"
    }
    
    // MARK: - Helpers
    
    /** Converts temperature value to specific text format using selected temperature type settings. */
    private func format(temperature: Double) -> String {
        switch UserDefaults.temperatureNotation() {
            case .fahrenheit:
                return String(format: "%.0f 째F", temperature)
            case .celsius:
                return String(format: "%.0f 째C", temperature.toCelcius())
        }
    }
}
