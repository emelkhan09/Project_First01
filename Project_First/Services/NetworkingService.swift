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
            guard let data = data else { return }
            print(String(data: data, encoding: .utf8)!)
        }
        
        task.resume()
        return url
    }
}
