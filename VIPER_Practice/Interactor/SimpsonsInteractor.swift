//
//  SimpsonsInteractor.swift
//  VIPER_Practice
//
//  Created by Adam Lee Zuspan on 11/1/18.
//  Copyright © 2018 Adam Lee Zuspan. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON


/*
 * Protocol that defines the Interactor's use case.
 */
protocol SimpsonsInteractorInput: class {
    func fetchSimpsons()
}

class SimpsonsInteractor: SimpsonsInteractorInput {
    
    // Url to the desired API.
    let url = "https://api.duckduckgo.com/?q=simpsons+characters&format=json"
    var arrData_JsonModelSimpsons = [JsonModelSimpsons]()
    
    func fetchSimpsons() {
        Alamofire.request(url).responseJSON { response in
            //print("Request: \(String(describing: response.request))")   // original url request
            //print("Response: \(String(describing: response.response))") // http url response
            //print("Result: \(response.result)")                         // response serialization result
            
            if let json = response.result.value {
                //print("JSON: \(json)") // serialized json response
            }
            
            if let data = response.data, let utf8Text = String(data: data, encoding: .utf8) {
                //print("Data: \(utf8Text)") // original server data as UTF8 string
                do {
                    let json = try JSON(data:data)
                    print("\(json)\n\n\n")
                    
                    //loop through and grab each charcter
                    for i in 0..<json["RelatedTopics"].count {
                        self.arrData_JsonModelSimpsons.append(JsonModelSimpsons(json: json["RelatedTopics"][i]))
                    }
                    //MAY NEED MAYBE??
                    //DispatchQueue.main.async {
                        //self.cityNameTable.reloadData()
                    //}
                }
                catch {
                    print("Error was \(error.localizedDescription)")
                }
            }
            print("Size of arrData --> \(self.arrData_JsonModelSimpsons.count)")
            for i in 0..<self.arrData_JsonModelSimpsons.count {
                print(self.arrData_JsonModelSimpsons[i].characterName)
                print(self.arrData_JsonModelSimpsons[i].characterDiscription)
                print(self.arrData_JsonModelSimpsons[i].imageUrl)
            }
        }.resume()
        
        
    }
    
}
