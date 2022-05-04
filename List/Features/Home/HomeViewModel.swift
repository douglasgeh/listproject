//
//  HomeViewModel.swift
//  List
//
//  Created by Douglas Gehring on 04/05/22.
//

import Foundation
import UIKit

protocol HomeViewModelProvider {
    var viewModel: HomeViewModel { get }
}

final class HomeViewModel {

    //-----------------------------------------------------------------------------
    // MARK: - Injected properties
    //-----------------------------------------------------------------------------

    let backgroundColor: UIColor
    let navigationBarViewModel: DSNavigationBarViewModel

    //-----------------------------------------------------------------------------
    // MARK: - Initialization
    //-----------------------------------------------------------------------------

    init(backgroundColor: UIColor,
         navigationBarViewModel: DSNavigationBarViewModel) {

        self.backgroundColor = backgroundColor
        self.navigationBarViewModel = navigationBarViewModel
    }
}
