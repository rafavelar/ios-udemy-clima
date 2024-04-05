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
        if let url = URL(string: urlString) {
            //2. Create a URLSession.
            let session = URLSession(configuration: .default)
            //3. Give URLSession a task.
            let task = session.dataTask(with: url, completionHandler: handle(data:response:error:))
            /*
             Las clases recien creaadas nacen inicializadas con un estado suspendida.
             Para que esa tarea sea inicalizada se llama el metodo `resume`
             */
            //4. Start the task.
            task.resume()
        }
    }
    
    func handle(data: Data?, response: URLResponse?, error: Error?){
        if error != nil,
        let errorSafe = error {
            print(errorSafe)
        }
        
        if let safeData = data {
            let dataString = String(data: safeData, encoding: .utf8)
            print(dataString ?? "No data")
        }
    }
}
