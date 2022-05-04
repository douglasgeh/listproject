//
//  HomePresenter.swift
//  List
//
//  Created by Douglas Gehring on 04/05/22.
//

import Foundation
import RxSwift

final class HomePresenter: HomeViewModelProvider {

    //-----------------------------------------------------------------------------
    // MARK: - HomeViewModelProvider
    //-----------------------------------------------------------------------------

    lazy var viewModel: HomeViewModel = .init(
        backgroundColor: ColorStyles.white,
        navigationBarViewModel: .init(title: "")
    )
}
