//
//  BaseRouter.swift
//  List
//
//  Created by Douglas Gehring on 04/05/22.
//

import Foundation
import UIKit
import RxSwift

class BaseRouter {
    
    let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
}

//-----------------------------------------------------------------------------
// MARK: - HomeViewModelProvider
//-----------------------------------------------------------------------------

extension BaseRouter {
    
    var pop: Binder<Void> {
        Binder(self) { target, _ in
            target.navigationController.popViewController(animated: true)
        }
    }
}
