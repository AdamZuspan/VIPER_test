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
    func showDetailsForArticle(article: Article)
}


/*
 * Protocol that defines the commands sent from the Interactor to the Presenter.
 */
protocol ArticlesInteractorOutput: class {
    func articlesFetched(articles: [Article])
}


class SimpsonsPresenter {
    
    
}
