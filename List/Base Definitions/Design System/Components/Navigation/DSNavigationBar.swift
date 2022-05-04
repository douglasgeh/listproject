//
//  DSNavigationbar.swift
//  List
//
//  Created by Douglas Gehring on 04/05/22.
//

import Foundation
import UIKit

//-----------------------------------------------------------------------------
// MARK: - ViewModelConfigurable
//-----------------------------------------------------------------------------

extension UINavigationController: ViewModelConfigurable {
    func configure(with viewModel: DSNavigationBarViewModel) {
        navigationItem.title = viewModel.title
    }
}
