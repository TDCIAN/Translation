//
//  TranslateResponseModel.swift
//  Translation
//
//  Created by JeongminKim on 2022/03/30.
//

import Foundation

struct TranslateResponseModel: Decodable {
    private let message: Message
    
    var translatedText: String {
        return message.result.translatedText
    }
    
    struct Message: Decodable {
        let result: Result
    }
    
    struct Result: Decodable {
        let translatedText: String
    }
}
