//
//  Conversions.swift
//  WeatherAroundMe
//


import Foundation

extension Double {

    func toCelcius() -> Double {
        return ((self - 32.0) / 1.8)
    }

    func toKPH() -> Double {
        return (self * 1.609344)
    }

}
