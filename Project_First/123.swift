//
//  123.swift
//  Project_First
//
//  Created by test on 08.10.2020.
//  Copyright © 2020 Emelkhan. All rights reserved.
//

import Foundation
var components = URLComponents()
components.scheme = "hhtps"
components.host = "api.github.com"
components.path = "/repositories?q=language:swift&sort=stars&order=desc"

guard let url = components.url else {
    preconditionFailure
}
