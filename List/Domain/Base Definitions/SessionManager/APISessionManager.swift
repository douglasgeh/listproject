//
//  APISessionManager.swift
//  List
//
//  Created by Douglas Gehring on 04/05/22.
//

import Foundation
import RxRelay
import RxSwift

protocol APISessionManagerType {
    func perform(request: APIRequest) -> Single<Data>
}

final class APISessionManager {
    
    //-----------------------------------------------------------------------------
    // MARK: - Injected properties
    //-----------------------------------------------------------------------------
    
    let userID: String
    
    //-----------------------------------------------------------------------------
    // MARK: - Initialization
    //-----------------------------------------------------------------------------
    
    init(userID: String) {
        self.userID = userID
    }
}

//-----------------------------------------------------------------------------
// MARK: - APISessionManagerType
//-----------------------------------------------------------------------------

extension APISessionManager: APISessionManagerType {
    
    func perform(request: APIRequest) -> Single<Data> {
        guard let url = request.url else { return .error(AppErrors.invalidURL) }
        
        return Single.create { single in
            let session = URLSession.shared.dataTask(with: url) { data, _, error in
                guard let data = data, error == nil else {
                    single(.failure(error ?? AppErrors.invalidRequest))
                    return
                }
                single(.success(data))
            }
            session.resume()
            
            return Disposables.create()
        }
    }
}
