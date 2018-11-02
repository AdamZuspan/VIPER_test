//
//  MyTableViewCell.swift
//  VIPER_Practice
//
//  Created by Adam Lee Zuspan on 11/2/18.
//  Copyright © 2018 Adam Lee Zuspan. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell {
    
    @IBOutlet weak var simpsonDetails: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    func formatSimpsonsImages(simpsonDataArray: [JsonModelSimpsons]) {
        //Access array of models and go through each and store the imageURL in an array
        var pictureArray = [UIImage]()
        //go through imageURL array and create actaul images
    }
}
