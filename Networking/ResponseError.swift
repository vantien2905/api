//
//  ResponeError.swift
//  Prelens-jinny
//
//  Created by Tien Dinh on 3/16/18.
//  Copyright © 2018 Tien Dinh. All rights reserved.
//

import ObjectMapper

class ResponseError: Mappable {

    var message: String?
    var code: Int?
    var status: Bool?

    required init?(map: Map) {

    }

    func mapping(map: Map) {
        self.message <- map["message"]
        self.code <- map["code"]
        self.status <- map["status"]
    }
}
