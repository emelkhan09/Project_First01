//
//  NetworkingService.swift
//  Project_First
//
//  Created by test on 09.10.2020.
//  Copyright © 2020 Emelkhan. All rights reserved.
//

import Foundation


struct NetworkingService: Hashable {
    
    let session = URLSession.shared
    let defaultSession = URLSession(configuration: .default)
    var dataTask: URLSessionDataTask?
    
    private var url: URL? {
        
        var components = URLComponents()
        components.scheme = "https"
        components.host = "api.github.com"
        components.path = "/repositories?q=language:swift&sort=stars&order=desc"
        
        guard let url = components.url else {
            preconditionFailure("Failed to constuct URL")
        }
        
        let task = session.dataTask(with: url) { data, response, error in
            guard error == nil else {
                print ("error: \(error!)")
                return
            }
            guard let content = data else {
                print("No data")
                return
            }
            guard let json = (try? JSONSerialization.jsonObject(with: content, options: JSONSerialization.ReadingOptions.mutableContainers)) as? [String: Any] else {
                print("Not containing JSON")
                return
            }
            print("gotten json response dictionary is \n \(json)")
            
            
        }
        task.resume()
        return url
    }
}
