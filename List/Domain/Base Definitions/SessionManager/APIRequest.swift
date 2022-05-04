//
//  APIRequest.swift
//  List
//
//  Created by Douglas Gehring on 04/05/22.
//

import Foundation

struct APIRequest: Equatable {
    
    //-----------------------------------------------------------------------------
    // MARK: - Public properties
    //-----------------------------------------------------------------------------

    var url: URL? {
        URL(string: stringURL)
    }
    
    //-----------------------------------------------------------------------------
    // MARK: - Injected properties
    //-----------------------------------------------------------------------------
    
    let stringURL: String
    
    //-----------------------------------------------------------------------------
    // MARK: - Initialization
    //-----------------------------------------------------------------------------
    
    init(stringURL: String) {
        self.stringURL = stringURL
    }
}
