//
//  ViewModelConfigurable.swift
//  List
//
//  Created by Douglas Gehring on 04/05/22.
//

import Foundation
import UIKit

protocol ViewModelConfigurable {
    associatedtype ViewModelType
    func configure(with viewModel: ViewModelType)
}
