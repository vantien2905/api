//
//  Provider.swift
//  Prelens-jinny
//
//  Created by Tien Dinh on 3/16/18.
//  Copyright © 2018 Tien Dinh. All rights reserved.
//

import Foundation
import Alamofire

class Provider {
    static let shared: Provider = {
        return Provider()
    }()
    
    var session: NetworkSession {
        return SessionManager.default
    }
    
    var network: NetworkProtocol {
        return Network(session: session)
    }
    
    var authenticationService: AuthenticationServiceProtocol {
        return WordBookService(network: network)
    }
}
