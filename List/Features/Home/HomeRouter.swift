//
//  HomeRouter.swift
//  List
//
//  Created by Douglas Gehring on 04/05/22.
//

import RxRelay
import RxSwift
import UIKit

final class HomeRouter: BaseRouter {

    //-----------------------------------------------------------------------------
    // MARK: - Factory
    //-----------------------------------------------------------------------------

    typealias ViewControllersFactory = AnyObject

    //-----------------------------------------------------------------------------
    // MARK: - Public properties
    //-----------------------------------------------------------------------------

    let navLeftButtonTap = PublishRelay<Void>()
    let continueButtonTap = PublishRelay<Void>()

    //-----------------------------------------------------------------------------
    // MARK: - Private properties
    //-----------------------------------------------------------------------------

    private let disposeBag = DisposeBag()

    //-----------------------------------------------------------------------------
    // MARK: - Injected properties
    //-----------------------------------------------------------------------------

    let viewControllersFactory: ViewControllersFactory

    //-----------------------------------------------------------------------------
    // MARK: - Initialization
    //-----------------------------------------------------------------------------

    init(navigationController: UINavigationController, viewControllersFactory: ViewControllersFactory) {
        self.viewControllersFactory = viewControllersFactory

        super.init(navigationController: navigationController)

        bind()
    }
}

//-----------------------------------------------------------------------------
// MARK: - Binders
//-----------------------------------------------------------------------------

extension HomeRouter {

    private func bind() {
        
    }

    private var pushDetailViewController: Binder<Void> {
        Binder(self) { target, _ in
            
        }
    }
}
