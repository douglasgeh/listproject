//
//  HomeUsersWebService.swift
//  List
//
//  Created by Douglas Gehring on 04/05/22.
//

import Foundation
import RxSwift

protocol HomeUsersWebServiceType {
    func request() -> Single<[HomeUserInfo]>
}

final class HomeUsersWebService: HomeUsersWebServiceType {

    //-----------------------------------------------------------------------------
    // MARK: - Injected properties
    //-----------------------------------------------------------------------------

    let sessionManager: APISessionManagerType

    //-----------------------------------------------------------------------------
    // MARK: - Initialization
    //-----------------------------------------------------------------------------

    init(sessionManager: APISessionManagerType) {
        self.sessionManager = sessionManager
    }

    //-----------------------------------------------------------------------------
    // MARK: - HomeUsersWebServiceType
    //-----------------------------------------------------------------------------

    func request() -> Single<[HomeUserInfo]> {
        return sessionManager.perform(
            request: .init(
                stringURL: ""
            )
        ).flatMap {
            do {
                let homeUserInfos = try JSONDecoder().decode([HomeUserInfo].self, from: $0)
                return .just(homeUserInfos)
            } catch {
                return .error(error)
            }
        }
    }
}
