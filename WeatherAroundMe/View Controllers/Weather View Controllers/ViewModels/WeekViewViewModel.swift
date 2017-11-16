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
    
    var numberOfSections: Int {
        return 1
    }
    
    var numberOfDays: Int {
        return weatherData.count
    }
    
    func day(for index: Int) -> String {
        
        let weatherDayData = weatherData[index]
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        
        return dateFormatter.string(from: weatherDayData.time)
    }
    
    func date(for index: Int) -> String {
        let weatherDayData = weatherData[index]
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMMM d"
        
        return dateFormatter.string(from: weatherDayData.time)
    }
}
