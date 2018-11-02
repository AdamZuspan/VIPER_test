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
    
    @IBOutlet weak var tableView: UITableView!
    // Reference to the Presenter's interface.
    var presenter: SimpsonsModuleInterface!
    var simpsons = [JsonModelSimpsons]()
    /*
     * Once the view is loaded, it sends a command
     * to the presenter asking it to update the UI.
     */
    override func viewDidLoad() {
        super.viewDidLoad()
        self.presenter?.updateView()
    }
    
    // MARK: ArticlesViewInterface
    
    func showSimpsonsData(simpsons: [JsonModelSimpsons]) {
        self.simpsons = simpsons
        self.tableView.reloadData()
    }
    
    func showNoContentScreen() {
        // Show custom empty screen.
    }
}

extension SimpsonsViewController:  UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 43 //simpsons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! MyTableViewCell
        if (simpsons.count == 0 ){print("Data Array empty!!")}
        cell.simpsonDetails.text = simpsons[indexPath.row].characterName
        return cell
    }
    
    
    
}
