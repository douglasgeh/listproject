//
//  HomeUsersWebServiceFactory.swift
//  List
//
//  Created by Douglas Gehring on 04/05/22.
//

import Foundation

protocol HomeUsersWebServiceFactory {
    func homeUsersWebService() -> HomeUsersWebServiceType
}

extension UserDependencyContainer: HomeUsersWebServiceFactory {

    func homeUsersWebService() -> HomeUsersWebServiceType {
        HomeUsersWebService(
            sessionManager: apiSessionManager
        )
    }
}
