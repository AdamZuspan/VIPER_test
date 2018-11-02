//
//  SimpsonsViewController.swift
//  VIPER_Practice
//
//  Created by Adam Lee Zuspan on 11/2/18.
//  Copyright © 2018 Adam Lee Zuspan. All rights reserved.
//

import UIKit

/*
 * Protocol that defines the view input methods.
 */
protocol SimpsonsViewInterface: class {
    func showSimpsonsData(simpsons: [JsonModelSimpsons])
    func showNoContentScreen()
}

/*
 * A view responsible for displaying a list
 * of articles fetched from some source.
 */
class SimpsonsViewController: UIViewController, SimpsonsViewInterface {
    
    // Reference to the Presenter's interface.
    var presenter: SimpsonsModuleInterface!
    
    /*
     * Once the view is loaded, it sends a command
     * to the presenter asking it to update the UI.
     */
    override func viewDidLoad() {
        super.viewDidLoad()
        self.presenter.updateView()
    }
    
    // MARK: ArticlesViewInterface
    
    func showSimpsonsData(simpsons: [JsonModelSimpsons]) {
        //Issue here since no member simpsons in Class
        
        //self.simpsons = simpsons
        //self.tableView.reloadData()
    }
    
    func showNoContentScreen() {
        // Show custom empty screen.
    }
    
    

}
