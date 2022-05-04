//
//  DSLabel.swift
//  List
//
//  Created by Douglas Gehring on 04/05/22.
//

import Foundation
import UIKit

final class DSLabel: UILabel { }

//-----------------------------------------------------------------------------
// MARK: - ViewModelConfigurable
//-----------------------------------------------------------------------------

extension DSLabel: ViewModelConfigurable {
    func configure(with viewModel: DSTextModel) {
        text = viewModel.text
        font = viewModel.font
        textAlignment = viewModel.alignment
        textColor = viewModel.color
    }
}
