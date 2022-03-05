//
//  StatusServer.swift
//  CodingChallenge
//
//  Created by Amr Mohamed on 02/03/2022.
//

import Foundation

class StatusServer: Codable {
    var statusCode: Int?
    var message: String?
    var errors: [APIError]?
    
    enum CodingKeys: String, CodingKey {
        case statusCode = "status"
        case message, errors
    }
    
    init(message: String) {
        self.message = message
    }
}

class APIError: Codable {
    var statusCode: Int?
    var message: String?
    
    enum CodingKeys: String, CodingKey {
        case statusCode = "code"
        case message
    }
}
