//
//  SimpsonsPresenter.swift
//  VIPER_Practice
//
//  Created by Adam Lee Zuspan on 11/1/18.
//  Copyright © 2018 Adam Lee Zuspan. All rights reserved.
//

import Foundation

/*
 * Protocol that defines the commands sent from the View to the Presenter.
 */
protocol SimpsonsModuleInterface: class {
    func updateView()
    func showDetailsForSimpsons(simpsons: JsonModelSimpsons)
}


/*
 * Protocol that defines the commands sent from the Interactor to the Presenter.
 */
protocol SimpsonsInteractorOutput: class {
    func simpsonsFetched(simpsons: [JsonModelSimpsons])
}


class SimpsonsPresenter: SimpsonsModuleInterface, SimpsonsInteractorOutput {
    // Reference to the View (weak to avoid retain cycle).
    //weak var view: SimpsonsViewInterface!
    
    // Reference to the Interactor's interface.
    var interactor: SimpsonsInteractorInput!
    
    // Reference to the Router
    //var wireframe: SimpsonsWireframe!
    
    
    // MARK: ArticlesModuleInterface
    
    func updateView() {
        self.interactor.fetchSimpsons()
    }
    
    func showDetailsForSimpsons(simpsons: JsonModelSimpsons) {
        //self.wireframe.presentDetailsInterfaceForArticle(simpsons)
    }
    
    // MARK: ArticlesInteractorOutput
    
    func simpsonsFetched(simpsons: [JsonModelSimpsons]) {
        if simpsons.count > 0 {
            //Issue here since no member named simpsons in this class
            
            //self.simpsons = simpsons
            //self.view.showArticlesData(articles)
        } else {
            //self.view.showNoContentScreen()
        }
    }
    
}
