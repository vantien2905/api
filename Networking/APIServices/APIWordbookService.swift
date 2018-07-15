//
//  LoginService.swift
//  Prelens-jinny
//
//  Created by Tien Dinh on 3/16/18.
//  Copyright © 2018 Tien Dinh. All rights reserved.
//

import RxSwift
import Alamofire

protocol AuthenticationServiceProtocol {
    func getWordbook() -> Observable<[WordBook]>
}

class WordBookService: AuthenticationServiceProtocol {
    private let network: NetworkProtocol
    
    init(network: NetworkProtocol) {
        self.network = network
    }
    
    func getWordbook() -> Observable<[WordBook]> {
//        let parameters = [
//            "username": username,
//            "password": password
//        ]
        
        return network.rx_Array(url: APIEndpoint.Authentication.getWordBook, method: .get, parameters: nil)
        
    }
    
}
