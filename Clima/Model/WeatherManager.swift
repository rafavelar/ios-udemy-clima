//
//  WeatherManager.swift
//  Clima
//
//  Created by 787437 on 04/04/24.
//  Copyright © 2024 App Brewery. All rights reserved.
//

import Foundation

struct WeatherManager {
    let weatherURL = "https://api.openweathermap.org/data/2.5/weather?appid=467ea964612c1a637ef1fd00874cdd69&units=metric"
    
    func fetchWeather(cityName: String) {
        let urlString = "\(weatherURL)&q\(cityName)"
        performRequest(urlString: urlString)
    }
    
    func performRequest(urlString: String) {
        //1. Create a URL.
        //2. Create a URLSession.
        //3. Give URLSession a task.
        //4. Start the task.
    }
}
