//
//  SimpsonsWireFrame.swift
//  VIPER_Practice
//
//  Created by Adam Lee Zuspan on 11/2/18.
//  Copyright © 2018 Adam Lee Zuspan. All rights reserved.
//

import Foundation


/*
 * Protocol that defines the possible routes from the Articles module.
 */
protocol SimpsonsWireframeInput {
    func presentDetailsInterfaceForSimpsons(simpsons: JsonModelSimpsons)
}


class SimpsonsWireFrame: NSObject, SimpsonsWireframeInput {
    // Reference to the ViewController (weak to avoid retain cycle).
    weak var SimpsonsViewController: SimpsonsViewController!
    
    // Reference to the Router of the next VIPER module.
    //var detailsWireframe: DetailsWireframe!
    
    
    // MARK: ArticlesWireframeInput
    
    func presentDetailsInterfaceForSimpsons(simpsons: JsonModelSimpsons) {
        // Create the Router for the upcoming module.
        //self.detailsWireframe = DetailsWireframe()
        
        // Sends the article data to the next module's Presenter.
        //self.sendSimpsonsToDetailsPresenter(self.detailsWireframe.detailsPresenter, simpson: simpsons)
        
        // Presents the next View.
        //self.detailsWireframe.presentSimpsonsDetailsInterfaceFromViewController(self.SimpsonsViewController)
    }
    
    
    // MARK: Private
    
//    private func sendSimpsonsToDetailsPresenter(detailsPresenter: DetailsPresenter, simpsons: JsonModelSimpsons) {
//        detailsPresenter.simpsons = simpsons
//    }
}
