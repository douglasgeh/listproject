//
//  DSButton.swift
//  List
//
//  Created by Douglas Gehring on 04/05/22.
//

import Foundation
import UIKit
import RxRelay

class DSButton: UIButton { }

//-----------------------------------------------------------------------------
// MARK: - ViewModelConfigurable
//-----------------------------------------------------------------------------

extension DSButton: ViewModelConfigurable {
    func configure(with viewModel: DSButtonViewModel) {
        setTitle(viewModel.titleTextModel.text, for: .normal)
    }
}
