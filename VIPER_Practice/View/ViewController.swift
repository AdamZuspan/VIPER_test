//
//  ViewController.swift
//  VIPER_Practice
//
//  Created by Adam Lee Zuspan on 11/1/18.
//  Copyright © 2018 Adam Lee Zuspan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let interactor = SimpsonsInteractor()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        interactor.fetchSimpsons()
    }


}

