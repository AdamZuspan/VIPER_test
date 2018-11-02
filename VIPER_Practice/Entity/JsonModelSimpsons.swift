//
//  JsonModelSimpsons.swift
//  VIPER_Practice
//
//  Created by Adam Lee Zuspan on 11/1/18.
//  Copyright © 2018 Adam Lee Zuspan. All rights reserved.
//

import Foundation
import SwiftyJSON

class JsonModelSimpsons {
    // Need  image, title, description
    var characterName: String = "Nothing Stored from JSON"
    var characterDiscription: String = "Nothing Stored from JSON"
    var imageUrl: String = "Nothing Stored from JSON"
    
    init(json: JSON) {
        characterName = json["Text"].stringValue
        characterDiscription = json["Text"].stringValue
        imageUrl = json["Icon"]["URL"].stringValue
    }
    
}
