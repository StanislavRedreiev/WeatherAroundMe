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
}
