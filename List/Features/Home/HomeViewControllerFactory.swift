//
//  HomeViewControllerFactory.swift
//  List
//
//  Created by Douglas Gehring on 04/05/22.
//

import UIKit

protocol HomeViewControllerFactory {
    func homeViewController(navigationController: UINavigationController) -> UIViewController
}

extension UserDependencyContainer: HomeViewControllerFactory {

    func homeViewController(navigationController: UINavigationController) -> UIViewController {
        let presenter = HomePresenter()

        let router = HomeRouter(
            navigationController: navigationController,
            viewControllersFactory: self
        )

        let interactor = HomeInteractor(
            presenter: presenter,
            router: router,
            userWebService: homeUsersWebService(),
            scheduler: scheduler
        )

        return HomeViewController(viewModelProvider: interactor)
    }
}
