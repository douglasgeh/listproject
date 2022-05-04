//
//  HomeCellViewModel.swift
//  List
//
//  Created by Douglas Gehring on 04/05/22.
//

import Foundation

final class HomeCellViewModel {

    //-----------------------------------------------------------------------------
    // MARK: - Injected properties
    //-----------------------------------------------------------------------------

    let titleTextModel: DSTextModel
    let subtitleTextModel: DSTextModel

    //-----------------------------------------------------------------------------
    // MARK: - Initialization
    //-----------------------------------------------------------------------------

    init(titleTextModel: DSTextModel, subtitleTextModel: DSTextModel) {
        self.titleTextModel = titleTextModel
        self.subtitleTextModel = subtitleTextModel
    }
}
