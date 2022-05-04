//
//  UserDependencyContainer.swift
//  List
//
//  Created by Douglas Gehring on 04/05/22.
//

import Foundation
import RxSwift

final class UserDependencyContainer {
    
    //-----------------------------------------------------------------------------
    // MARK: - Public properties
    //-----------------------------------------------------------------------------
    
    static var current: UserDependencyContainer?
    
    //-----------------------------------------------------------------------------
    // MARK: - Injected properties
    //-----------------------------------------------------------------------------
    
    let apiSessionManager: APISessionManager
    let scheduler: SchedulerType
    
    //-----------------------------------------------------------------------------
    // MARK: - Initialization
    //-----------------------------------------------------------------------------
    
    init(apiSessionManager: APISessionManager,
         scheduler: SchedulerType) {
        self.apiSessionManager = apiSessionManager
        self.scheduler = scheduler
    }
}
