//
//  DSButtonViewModel.swift
//  List
//
//  Created by Douglas Gehring on 04/05/22.
//

import Foundation
import RxRelay

struct DSButtonViewModel {
    
    let titleTextModel: DSTextModel
    let tap = PublishRelay<Void>()
    
    init(titleTextModel: DSTextModel) {
        self.titleTextModel = titleTextModel
    }
}
