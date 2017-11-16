//
//  DayViewViewModel.swift
//  WeatherAroundMe
//
//  Created by My MacBook on 11/13/17.


import UIKit

struct DayViewViewModel {
    
    let weatherData: WeatherData
    private let dataFormater = DateFormatter()
        
    var date: String {
        self.dataFormater.dateFormat = "EEE, MMMM d"
        let dateInTextFormat = self.dataFormater.string(from: Date())
        return dateInTextFormat
    }
    
    var time: String {
        self.dataFormater.dateFormat = UserDefaults.timeNotation().timeFormat
        let timeInTextFormat = self.dataFormater.string(from: Date())
        return timeInTextFormat
    }
    
    var summary: String {
        return self.weatherData.summary
    }
    
    var temperature: String {
        let tempteratureValue = self.weatherData.temperature
        switch UserDefaults.temperatureNotation() {
            case .fahrenheit:
                return String(format: "%.1f 'F", tempteratureValue)
            case .celsius:
                return String(format: "%.1f 'C", tempteratureValue)
        }
    }
    
    var windSpeed: String {
        let windSpeedValue = self.weatherData.windSpeed
        switch UserDefaults.unitsNotation() {
            case .imperial:
                return String(format: "%.f MPH", windSpeedValue)
            case .metric:
                return String(format: "%.f KPH", windSpeedValue)
        }
    }
    
    var image: UIImage? {
        return UIImage.imageForIcon(withName: weatherData.icon)
    }
    
}


